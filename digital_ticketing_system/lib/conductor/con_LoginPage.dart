// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
// import 'package:helloworld/conductor/conductor_page.dart';
// import 'package:helloworld/conductor/signup_page.dart';
// import 'package:helloworld/signup_page.dart';

class con_Login_Page extends StatefulWidget {
  const con_Login_Page({super.key});

  @override
  State<con_Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<con_Login_Page> {
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffacaaaa),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/login.png',
                  height: 150,
                  width: 150,
                )),
            Text(
              "Login",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 25),
              child: Text(
                "Sign in to your account",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
              child: TextField(
                style: TextStyle(color: Color(0xff000000)),
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(color: Color(0xff000000)),
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                  fillColor: Color(0xffffffff),
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
              child: TextField(
                style: TextStyle(color: Color(0xff000000)),
                textAlign: TextAlign.start,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your Password",
                  hintStyle: TextStyle(color: Color(0xff000000)),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.black,
                  ),
                  fillColor: Color(0xffffffff),
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 20),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700],
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90.0, 20, 90, 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          // builder: (context) => const Conductor_Page(),
                          ),
                    );
                    ;
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff374090)),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    minimumSize: MaterialStatePropertyAll(
                      Size(220, 60),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text("submit",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
            Text(
              "OR",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      // builder: (context) => const Signup_page(),
                      ),
                );
              },
              style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
