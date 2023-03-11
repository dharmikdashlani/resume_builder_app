import 'package:flutter/material.dart';
import 'package:resume_builder_app/globals.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool checkbox = false;
  bool? checkC = false;
  bool? checkCC = false;
  bool? checkFlutter = false;

  TextEditingController projectTitleController =
      TextEditingController(text: Globals.projectTitle);
  TextEditingController rolesProjectController =
      TextEditingController(text: Globals.rolesProject);
  TextEditingController technologiesController =
      TextEditingController(text: Globals.technologies);
  TextEditingController projectDescripationController =
      TextEditingController(text: Globals.projectDescripation);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Project",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.deepPurpleAccent,
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
                                "Project Title",
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
                                return "Please Enter The projectTitle";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.projectTitle = (val);
                              });
                            },
                            controller: projectTitleController,
                            onChanged: (val) {
                              setState(() {
                                Globals.projectTitle = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "Resume Builder App",
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
                              "Technologies",
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
                                  value: checkC,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      checkC = value;
                                    });
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("C")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: checkCC,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      checkCC = value;
                                    });
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("C++")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: checkFlutter,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      checkFlutter = value;
                                    });
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Flutter")
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Roles",
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
                                return "Please Enter The Roles";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.rolesProject = (val);
                              });
                            },
                            controller: rolesProjectController,
                            onChanged: (val) {
                              setState(() {
                                Globals.rolesProject = val;
                              });
                            },
                            maxLines: 2,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "Code Analysis",
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
                              "Technologies",
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
                                return "Please Enter The technologies";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.technologies = (val);
                              });
                            },
                            controller: technologiesController,
                            onChanged: (val) {
                              setState(() {
                                Globals.technologies = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "5 - Programmers",
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
                              "Project Descripation",
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
                                return "Please Enter The project Descripation";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.projectDescripation = (val);
                              });
                            },
                            controller: projectDescripationController,
                            onChanged: (val) {
                              setState(() {
                                Globals.projectDescripation = val;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              hintText: "Enter Your Project Descripation",
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
