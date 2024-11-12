// ignore_for_file: must_be_immutable, avoid_print

// import 'package:auth/screens/login/login.dart';
import 'package:flutter/material.dart';

import 'screens/homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
