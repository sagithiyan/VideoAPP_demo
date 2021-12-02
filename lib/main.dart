import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_profile.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter_application_1/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SignInPage(),
    );
  }
}
