import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen_passing_data/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'NABEEL',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
        ),
      ),
    ));
  }
}
