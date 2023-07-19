import 'package:flutter/material.dart';
import 'LilSikh.dart';

void main() {
  return runApp(RunAppWidget());
}

class RunAppWidget extends StatelessWidget {
  const RunAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LilSikh(),
    );
  }
}
