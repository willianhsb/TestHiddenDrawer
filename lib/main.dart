// ignore_for_file: prefer_const_constructors

import 'package:animate_screens/hiden_drawer.dart';
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
      home: HidenDrawer(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
