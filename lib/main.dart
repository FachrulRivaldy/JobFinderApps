import 'package:flutter/material.dart';
import 'signin.dart';
import 'chat.dart';
import 'profile.dart';
import 'jobdetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Application',
      home: SignInPage(),
    );
  }
}
