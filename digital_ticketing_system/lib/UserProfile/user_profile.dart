// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 48, 46, 48),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Icon(
                  Icons.flutter_dash_rounded,
                  size: 90,
                  color: Colors.amber,
                ),
              ),
              Text(
                "Username",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text("Email",
                  style: TextStyle(fontSize: 24, color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),

              //update your acc

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.update,
                      color: Colors.white,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Update Your Account",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              //Contact us

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Contact Us",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
