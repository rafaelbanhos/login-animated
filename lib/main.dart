import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginanimated/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Animated",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
