import 'package:flutter/material.dart';
import 'package:resume_builder_app/resume_workspace.dart';
import 'package:resume_builder_app/globals.dart';

class Personal_page extends StatefulWidget {
  const Personal_page({Key? key}) : super(key: key);

  @override
  State<Personal_page> createState() => _Personal_pageState();
}

class _Personal_pageState extends State<Personal_page> {
  bool value = false;
  int val = -1;
  bool checkbox = false;
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;

  TextEditingController dateController =
      TextEditingController(text: Globals.date);
  TextEditingController countryController =
      TextEditingController(text: Globals.country);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Personal Details",
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 150,
        backgroundColor: Colors.deepPurpleAccent,
        leading: InkWell(
          // splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const resume_workspace()),
              );
            });
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            size: 30,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    // height: 620,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "DOB",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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
                                Globals.date = (val);
                              });
                            },
                            controller: dateController,
                            onChanged: (val) {
                              setState(() {
                                Globals.date = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "DD/MM/YYY",
                              hintStyle: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Marital Status",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              title: const Text("Male"),
                              leading: Radio(
                                value: 1,
                                groupValue: val,
                                onChanged: (value) {
                                  setState(() {
                                    val = value!;
                                  });
                                },
                                activeColor: Colors.deepPurpleAccent,
                              ),
                            ),
                            ListTile(
                              title: const Text("Female"),
                              leading: Radio(
                                value: 2,
                                groupValue: val,
                                onChanged: (value) {
                                  setState(() {
                                    val = value!;
                                  });
                                },
                                activeColor: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Languages Known",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: check1,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check1 = value;
                                    });
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("English")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: check2,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check2 = value;
                                    });
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Hindi")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Checkbox(
                                value: check3,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged: (bool? value) {
                                  setState(() {
                                    check3 = value;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Gujarati")
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Nationality",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter The country";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.country = (val);
                              });
                            },
                            controller: countryController,
                            onChanged: (val) {
                              setState(() {
                                Globals.country = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "India",
                              hintStyle: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                }
                              },
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.deepPurpleAccent),
                              ),
                              child: const Text("Save"),
                            ),
                          ),
                        )
                      ],
                    ),
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
