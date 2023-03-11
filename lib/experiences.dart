import 'package:flutter/material.dart';
import 'package:resume_builder_app/globals.dart';

// ignore: camel_case_types
class Experiences_Page extends StatefulWidget {
  const Experiences_Page({Key? key}) : super(key: key);

  @override
  State<Experiences_Page> createState() => _Experiences_PageState();
}

// ignore: camel_case_types
class _Experiences_PageState extends State<Experiences_Page> {
  bool value = false;
  int val = -1;

  bool a = true;
  bool b = false;

  TextEditingController companyNameController =
      TextEditingController(text: Globals.companyName);
  TextEditingController collegeController =
      TextEditingController(text: Globals.college);
  TextEditingController rolesController =
      TextEditingController(text: Globals.roles);
  TextEditingController dateJoinController =
      TextEditingController(text: Globals.date_Join);
  TextEditingController dateExitController =
      TextEditingController(text: Globals.date_Exit);


  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        title: const Text(
          "Experience",
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
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Company Name",
                                style:
                                    TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(

                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter The company Name";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.companyName = (val);
                              });
                            },
                            controller: companyNameController,
                            onChanged: (val) {
                              setState(() {
                                Globals.companyName = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "Dashalni.info PVT.LTD",
                              hintStyle: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "School/ College/ Institute",
                                style:
                                    TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter The detailes!!!";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.college = (val);
                              });
                            },
                            controller: collegeController,
                            onChanged: (val) {
                              setState(() {
                                Globals.college = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "Software Engineer",
                              hintStyle: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Roles(Optional)",
                                style:
                                    TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(

                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter The roles";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.roles = (val);
                              });
                            },
                            controller: rolesController,
                            onChanged: (val) {
                              setState(() {
                                Globals.roles = val;
                              });
                            },
                            maxLines: 3,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText:
                                  "Working With Team Members To Come Up With Concepts And Product Analysis",
                              hintStyle: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Employed Status",
                                style:
                                    TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: const Text("Previously Employed"),
                                        leading: Radio(
                                          value: 1,
                                          groupValue: val,
                                          onChanged: (value) {
                                            setState(() {
                                              val = value!;
                                              a = true;
                                              b = false;
                                            });
                                          },
                                          activeColor: Colors.deepPurpleAccent,
                                        ),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: const Text("Currently Employed"),
                                        leading: Radio(
                                          value: 2,
                                          groupValue: val,
                                          onChanged: (value) {
                                            setState(() {
                                              val = value!;
                                              b = true;
                                              a = false;
                                            });
                                          },
                                          activeColor: Colors.deepPurpleAccent,
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        (a)
                            ? SizedBox(
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children:  [
                                          const Text("Date Joined"),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                                                  Globals.date_Join = (val);
                                                });
                                              },
                                              controller: dateJoinController,
                                              onChanged: (val) {
                                                setState(() {
                                                  Globals.date_Join = val;
                                                });
                                              },
                                              decoration: const InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black)),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors
                                                          .deepPurpleAccent),
                                                ),
                                                hintText: "DD/MM/YYY",
                                                hintStyle: TextStyle(
                                                  color: Colors.deepPurpleAccent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children:  [
                                          const Text("Date Exit"),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                                                  Globals.date_Exit = (val);
                                                });
                                              },
                                              controller: dateExitController,
                                              onChanged: (val) {
                                                setState(() {
                                                  Globals.date_Exit = val;
                                                });
                                              },
                                              decoration: const InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black)),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors
                                                          .deepPurpleAccent),
                                                ),
                                                hintText: "DD/MM/YYY",
                                                hintStyle: TextStyle(
                                                  color: Colors.deepPurpleAccent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        (b)
                            ? Column(
                                children:  [
                                  const Text("Date Exit"),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                          Globals.date_Exit = (val);
                                        });
                                      },
                                      controller: dateExitController,
                                      onChanged: (val) {
                                        setState(() {
                                          Globals.date_Exit = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black)),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurpleAccent),
                                        ),
                                        hintText: "DD/MM/YYY",
                                        hintStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60,
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!
                                    .validate()) {
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
                        ),
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
