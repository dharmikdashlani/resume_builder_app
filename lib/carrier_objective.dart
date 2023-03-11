import 'package:flutter/material.dart';
import 'package:resume_builder_app/resume_workspace.dart';
import 'package:resume_builder_app/globals.dart';

// ignore: camel_case_types
class Carrier_Page extends StatefulWidget {
  const Carrier_Page({Key? key}) : super(key: key);

  @override
  State<Carrier_Page> createState() => _Carrier_PageState();
}

// ignore: camel_case_types
class _Carrier_PageState extends State<Carrier_Page> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController objectiveController =
  TextEditingController(text: Globals.objective);
  TextEditingController designationController =
  TextEditingController(text: Globals.designation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Carrier Objective",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        toolbarHeight: 100,
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
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 270,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Career Objective",
                            style: TextStyle(
                                fontSize: 25, color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The Description";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.objective = (val);
                            });
                          },
                          controller: objectiveController,
                          onChanged: (val) {
                            setState(() {
                              Globals.objective = val;
                            });
                          },
                          maxLines: 5,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "Description",
                            hintStyle: TextStyle(
                              // color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              """Current Designation\n(Experienced Candidate)""",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.deepPurpleAccent),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The Current Designation";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.designation = (val);
                            });
                          },
                          controller: designationController,
                          onChanged: (val) {
                            setState(() {
                              Globals.designation = val;
                            });
                          },
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "Software Engineer",
                            hintStyle: TextStyle(
                              // color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),),
              ),
              Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.white),
                          ),
                          child: const Text(
                            "Submit / next",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent, fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            objectiveController.clear();
                            designationController.clear();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.white),
                          ),
                          child: const Text(
                            "Reset",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent, fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
