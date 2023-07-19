import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'dart:async';

class LilSikh extends StatefulWidget {
  const LilSikh({super.key});

  @override
  State<LilSikh> createState() => _LilSikhState();
}

class _LilSikhState extends State<LilSikh> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage("Assets/splash.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
