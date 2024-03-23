// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Acc_Update extends StatefulWidget {
  const Acc_Update({super.key});

  @override
  State<Acc_Update> createState() => _Acc_UpdateState();
}

class _Acc_UpdateState extends State<Acc_Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Details"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 10,
      ),
      body: const Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add some spacing between text and field
            TextField(
              decoration: InputDecoration(
                hintText: "John Doe",
                label: Text(
                  "Username",
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "JohnDoe@gmail.com",
                label: Text("Email"),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // Add some spacing between text and field
            TextField(
              decoration: InputDecoration(
                  hintText: "0000000000", label: Text("Phone Number")),
            ),
            SizedBox(
              height: 12,
            ),

            TextField(
              decoration: InputDecoration(
                  hintText: "0000 0000 0000", label: Text("Adhaar Number")),
            ),
          ],
        ),
      ),
    );
  }
}
