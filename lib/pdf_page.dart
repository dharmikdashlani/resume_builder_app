import 'package:flutter/foundation.dart';
import 'package:pdf/pdf.dart';
import 'package:resume_builder_app/globals.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

// ignore: camel_case_types
class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

// ignore: camel_case_types
class _pdfState extends State<pdf> {
  final pdf = pw.Document();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makePdf();
  }

  makePdf() {
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          children: [
            pw.Container(
              height: 500,
              width: 500,
              color: PdfColors.blueGrey,
              child: pw.Column(
                children: [
                  pw.Expanded(
                    flex: 7,
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "${Globals.name}",
                          style: const pw.TextStyle(
                              fontSize: 30, color: PdfColors.deepPurpleAccent),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    flex: 3,
                    child: pw.Column(children: [
                      pw.Container(
                        height: 150,
                        width: 150,
                        child: pw.Image(
                          pw.MemoryImage(
                            Globals.img!.readAsBytesSync(),
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Download Pdf"),
        backgroundColor: Colors.deepPurpleAccent,
        toolbarHeight: 150,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Image(
                  image: AssetImage('img/icons/pdf.png'),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("Click Hear To Download"),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () async {
                    Uint8List data = await pdf.save();
                    await Printing.layoutPdf(onLayout: (format) => data);
                  },
                  child: Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurpleAccent,
                        border: Border.all()),
                    child: const Center(
                      child: Text("Download"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
