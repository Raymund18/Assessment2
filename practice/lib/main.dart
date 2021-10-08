import 'package:flutter/material.dart';
import 'package:practice/authentication_screen.dart';
import 'package:practice/dashboard.dart';
import 'package:practice/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Color(0xFF293991)),
      home: AuthenticationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
