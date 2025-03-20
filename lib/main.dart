import 'package:bmi_calculator/pages/input_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0010161e),
        scaffoldBackgroundColor: Color(0x0010161e),
      ),
      home: InputApp(),
    );
  }
}
