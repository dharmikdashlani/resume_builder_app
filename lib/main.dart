import 'package:flutter/material.dart';
import 'package:resume_builder_app/Splash_Screen.dart';
import 'package:resume_builder_app/resume_workspace.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Resume Builder",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            alignment: const Alignment(-0.0, 0.3),
            color: Colors.deepPurpleAccent,
            child: const Text(
              "RESUME",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Image(
            image: AssetImage('img/2.png'),
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: const Text(
              "No Resumes + Create New Resume.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const resume_workspace()));
          });
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
