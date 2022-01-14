// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_finder/pages/home_page.dart';
import 'package:job_finder/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DM-Sans'),
      home: Splash(),
    );
  }
}
