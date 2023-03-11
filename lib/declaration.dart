import 'package:flutter/material.dart';
import 'package:resume_builder_app/globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool a = true;
  bool b = false;

  TextEditingController declarationDescripationController =
      TextEditingController(text: Globals.declarationDescripation);
  TextEditingController declarationDateController =
      TextEditingController(text: Globals.declarationDate);
  TextEditingController placeController =
      TextEditingController(text: Globals.place);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        title: const Text(
          "Declaration",
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Declaration",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                            Expanded(
                              child: Switch(
                                value: Globals.isDeclaration,
                                mouseCursor: MouseCursor.defer,
                                activeColor: Colors.deepPurpleAccent,
                                inactiveThumbColor: Colors.deepPurpleAccent,
                                trackColor: MaterialStateProperty.all(
                                    Colors.deepPurple),
                                onChanged: (val) {
                                  setState(() {
                                    Globals.isDeclaration = val;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      (Globals.isDeclaration)
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(18.0),
                                              child: SizedBox(
                                                child: Image(
                                                  image: AssetImage(
                                                      'img/icons/1(12).png'),
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(18.0),
                                              child: SizedBox(
                                                width: 180,
                                                child: TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Please Enter The Descripation";
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  onSaved: (val) {
                                                    setState(() {
                                                      Globals.declarationDescripation =
                                                          (val);
                                                    });
                                                  },
                                                  controller:
                                                      declarationDescripationController,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      Globals.declarationDescripation =
                                                          val;
                                                    });
                                                  },
                                                  maxLines: 1,
                                                  decoration:
                                                      const InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.white),
                                                    ),
                                                    hintText: "Descripation",
                                                    hintStyle: TextStyle(
                                                      color: Colors.white70,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 3,
                                          indent: 50,
                                          endIndent: 50,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    "Date",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            18.0),
                                                    child: SizedBox(
                                                      width: 140,
                                                      child: TextFormField(
                                                        validator: (val) {
                                                          if (val!.isEmpty) {
                                                            return "Please Enter The date";
                                                          } else {
                                                            return null;
                                                          }
                                                        },
                                                        onSaved: (val) {
                                                          setState(() {
                                                            Globals.declarationDate =
                                                                (val);
                                                          });
                                                        },
                                                        controller:
                                                            declarationDateController,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            Globals.declarationDate =
                                                                val;
                                                          });
                                                        },
                                                        maxLines: 1,
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                          hintText: "DD/MM/YY",
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                          hintStyle: TextStyle(
                                                            color:
                                                                Colors.white70,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    "Place",
                                                    style:
                                                        TextStyle(fontSize: 25),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            18.0),
                                                    child: SizedBox(
                                                      width: 140,
                                                      child: TextFormField(
                                                        validator: (val) {
                                                          if (val!.isEmpty) {
                                                            return "Please Enter The place";
                                                          } else {
                                                            return null;
                                                          }
                                                        },
                                                        onSaved: (val) {
                                                          setState(() {
                                                            Globals.place =
                                                                (val);
                                                          });
                                                        },
                                                        controller:
                                                            placeController,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            Globals.place = val;
                                                          });
                                                        },
                                                        maxLines: 1,
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                          hintText: "Surat",
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                          hintStyle: TextStyle(
                                                            color:
                                                                Colors.white70,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 50,
                                    width: 100,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.deepPurpleAccent),
                                      ),
                                      child: const Text("Save"),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 50,
                                    width: 100,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.deepPurpleAccent),
                                      ),
                                      child: const Text("Save"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
