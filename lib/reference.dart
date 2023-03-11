import 'package:flutter/material.dart';
import 'package:resume_builder_app/globals.dart';

class Reference extends StatefulWidget {
  const Reference({Key? key}) : super(key: key);

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {

  TextEditingController referencesNameController =
      TextEditingController(text: Globals.referencesName);
  TextEditingController referencedDesignationController =
  TextEditingController(text: Globals.referencedDesignation);
  TextEditingController organizationController =
  TextEditingController(text: Globals.organization);


  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        title: const Text(
          "References",
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
                              "References Name",
                              style: TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextFormField(

                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The references Name";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.referencesName = (val);
                            });
                          },
                          controller: referencesNameController,
                          onChanged: (val) {
                            setState(() {
                              Globals.referencesName = val;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "Suresh Shah",
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
                            "Designation",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ],
                      ),
                       Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextFormField(

                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The referenced Designation";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.referencedDesignation = (val);
                            });
                          },
                          controller: referencedDesignationController,
                          onChanged: (val) {
                            setState(() {
                              Globals.referencedDesignation = val;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "Marketing Manager",
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
                            "Organization/ Institute",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ],
                      ),
                       Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextFormField(

                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter The organization";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            setState(() {
                              Globals.organization = (val);
                            });
                          },
                          controller: organizationController,
                          onChanged: (val) {
                            setState(() {
                              Globals.organization = val;
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            hintText: "Green Energy Pvt.Ltd",
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
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
