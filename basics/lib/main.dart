// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 200, color: Colors.deepPurple),
        Container(height: 200, color: Colors.deepPurple[400]),
        Expanded(child: Container(height: 200, color: Colors.deepPurple[200])),
      ],
    )));
  }
}
