import 'dart:ui';

import 'package:flutter/material.dart';

class wallet_page extends StatefulWidget {
  const wallet_page({Key? key}) : super(key: key);

  @override
  State<wallet_page> createState() => _wallet_pageState();
}

class _wallet_pageState extends State<wallet_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Wallet',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 90, 40, 0),
              child: Container(
                color: const Color(0xffcdc5c5),
                height: 139,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Hello User", style: TextStyle(fontSize: 25)),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "₹400.0",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text("Your available balance")
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 0, 40, 40),
              child: Container(
                height: 314,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(63, 210, 157, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Add money to your wallet",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.square_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Gpay",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Icon(Icons.square_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Credit/Debit Card",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Icon(Icons.square_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Other UPI",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text("Pay",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(220, 40),
                                  backgroundColor: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.grey,
              height: 95,
              width: double.infinity,
              child: const Text(
                'Transcation History',
                style: const TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
