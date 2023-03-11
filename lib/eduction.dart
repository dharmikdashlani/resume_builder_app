import 'package:flutter/material.dart';
import 'package:resume_builder_app/globals.dart';

// ignore: camel_case_types
class eduction_page extends StatefulWidget {
  const eduction_page({Key? key}) : super(key: key);

  @override
  State<eduction_page> createState() => _eduction_pageState();
}

// ignore: camel_case_types
class _eduction_pageState extends State<eduction_page> {
  TextEditingController courseController =
      TextEditingController(text: Globals.course);
  TextEditingController schoolController =
      TextEditingController(text: Globals.school);
  TextEditingController perController =
      TextEditingController(text: (Globals.per != null) ? Globals.per.toString() : null);
  TextEditingController yearOfPassController =
      TextEditingController(text: Globals.yearOfPass);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        title: const Text(
          "Eduction",
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Course/Degree",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The Course/degree";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.course = (val);
                            });
                          },
                          controller: courseController,
                          onChanged: (val) {
                            setState(() {
                              Globals.course = val;
                            });
                          },
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "B.C.A/ M.C.A/ Flutter",
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
                            "School/ College/ Institute",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The detailes";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.school = (val);
                            });
                          },
                          controller: schoolController,
                          onChanged: (val) {
                            setState(() {
                              Globals.school = val;
                            });
                          },
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "M.L.PARMAR IT COLLEGE",
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
                            "School/ College/ Institute",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The detailes";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.per = (val) as int?;
                            });
                          },
                          controller: perController,
                          onChanged: (val) {
                            setState(() {
                              Globals.per = val as int?;
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "80% (OR) 8.0 CGPA",
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
                            "Year Of Pass",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The year of pass";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.yearOfPass = (val);
                            });
                          },
                          controller: yearOfPassController,
                          onChanged: (val) {
                            setState(() {
                              Globals.yearOfPass = val;
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "2020",
                            hintStyle: TextStyle(
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 100,
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
