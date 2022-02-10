// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auth/screen/sign_in_screen.dart';
import 'package:flutter_auth/screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignUpScreen());
  }
}
