// ignore_for_file: prefer_const_constructors

import 'package:comicsadmin/constants/theme.dart';
import 'package:flutter/material.dart';

import 'screens/homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ComicsAdmin",
      theme: themeData,
      home: Homepage(),
    );
  }
}