import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  initState() {
    super.initState();
    changescreen();
  }

  changescreen() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(
          // ignore: non_constant_identifier_names
          context,
          // ignore: non_constant_identifier_names
          MaterialPageRoute(builder: (Context) => const MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.deepPurpleAccent,
              child: const FlutterLogo(
                  size: 300, textColor: Colors.white, curve: Curves.bounceOut),
            ),
            const SizedBox(
              height: 100,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
