import 'package:flutter/material.dart';
import 'package:resume_builder_app/achievement.dart';
import 'package:resume_builder_app/contact_info.dart';
import 'package:resume_builder_app/declaration.dart';
import 'package:resume_builder_app/experiences.dart';

import 'pdf_page.dart';

// import 'package:resume_builder_app/interest.dart';
import 'package:resume_builder_app/project.dart';
import 'package:resume_builder_app/reference.dart';
import 'package:resume_builder_app/techical_skills.dart';
import 'eduction.dart';
import 'personal_detailes.dart';
import 'carrier_objective.dart';

// ignore: camel_case_types
class resume_workspace extends StatefulWidget {
  const resume_workspace({Key? key}) : super(key: key);

  @override
  State<resume_workspace> createState() => _resume_workspaceState();
}

// ignore: camel_case_types
class _resume_workspaceState extends State<resume_workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Resume Workspace",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurpleAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Build Options",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.29,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const contact_page()),
                          );
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey, width: 2))),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (1).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Contact info",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Carrier_Page()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (11).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Carrier Objective",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Personal_page()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (10).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Personal Details",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const eduction_page()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (9).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Eduction",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Experiences_Page()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (8).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Experiences",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: non_constant_identifier_names
                              builder: (Context) => const techical_page()),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (7).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Technical Skills",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     // ignore: non_constant_identifier_names
                        //     context,
                        //     MaterialPageRoute(
                        //         // ignore: non_constant_identifier_names
                        //         builder: (Context) => const interest_page()));
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (6).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Interest / Hobbies",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: non_constant_identifier_names
                              builder: (Context) => const Project()),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (2).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Project",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // ignore: non_constant_identifier_names
                            builder: (Context) => const achievements(),
                          ),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (4).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Achievement",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Reference()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (3).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Reference",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Declaration()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/1 (5).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Declaration",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const pdf()));
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage('img/icons/pdf.png'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "Download Pdf",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
