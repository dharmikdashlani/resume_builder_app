import 'package:flutter/material.dart';

// ignore: camel_case_types
class achievements extends StatefulWidget {
  const achievements({Key? key}) : super(key: key);

  @override
  State<achievements> createState() => _achievementsState();
}

// ignore: camel_case_types
class _achievementsState extends State<achievements> {
  List<TextEditingController> to2 = [];
  List<Map<String, dynamic>> container = [];
  var n = 0;
  int i = 0;

  Widget pop(int k) {
    return InkWell(
      onTap: () {
        setState(
              () {
            container.removeAt(k);
            to2.removeAt(k);
            i--;
          },
        );
      },
      child: const Icon(Icons.delete),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        title: const Text(
          "Achievements",
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Enter Your Achievements",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepPurpleAccent),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: container
                                .map(
                                  (e) => Container(
                                margin: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: TextField(
                                        controller:
                                        to2[container.indexOf(e)],
                                        decoration: const InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors
                                                    .deepPurpleAccent),
                                          ),
                                          hintText: "Flutter Developer",
                                          hintStyle: TextStyle(
                                            color: Colors.deepPurpleAccent,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: pop(container.indexOf(e)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                                .toList(),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            i++;
                            Map<String, dynamic> k = {
                              "g": i,
                            };

                            container.addAll([k]);
                            to2.add(TextEditingController());
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurple, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.deepPurple, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Icon(Icons.save),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
