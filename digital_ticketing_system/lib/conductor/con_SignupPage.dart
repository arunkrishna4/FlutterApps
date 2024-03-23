// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:digital_ticketing_system/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:helloworld/conductor/conductor_page.dart';

class con_Signup_page extends StatefulWidget {
  const con_Signup_page({super.key});

  @override
  State<con_Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<con_Signup_page> {
  @override
  Widget build(BuildContext context) {
    // final border = OutlineInputBorder(
    //   borderSide: BorderSide(
    //     color: Color(0xffffffff),
    //     style: BorderStyle.solid,
    //   ),
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(10),
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 45, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff000000)),
                  decoration: InputDecoration(
                    hintText: "Enter your username",
                    hintStyle: TextStyle(color: Color(0xff000000)),
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    fillColor: Color(0xffffffff),
                    filled: true,
                    // focusedBorder: border,
                    // enabledBorder: border,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
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
                padding: const EdgeInsets.fromLTRB(40, 10, 45, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff000000)),
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(color: Color(0xff000000)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    // focusedBorder: border,
                    // enabledBorder: border,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
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
                padding: const EdgeInsets.fromLTRB(40, 10, 45, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff000000)),
                  obscureText: true,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: Color(0xff000000)),
                    helperStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                    fillColor: Color(0xffffffff),
                    filled: true,
                    // focusedBorder: border,
                    // enabledBorder: border,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 45, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff000000)),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Re-enter your Password",
                    hintStyle: TextStyle(color: Color(0xff000000)),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                    fillColor: Color(0xffffffff),
                    filled: true,
                    // focusedBorder: border,
                    // enabledBorder: border,
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff121212)),
                      foregroundColor:
                          MaterialStatePropertyAll(Color(0xffffffff)),
                      minimumSize: MaterialStatePropertyAll(
                        Size(double.infinity, 60),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: Text("submit", style: TextStyle(fontSize: 25)),
                  ),
                ),
              ),
              Text("OR",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white)),
                child: Text(
                  "Already have an account?log in",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
