import 'dart:html';
import 'package:slider_button/slider_button.dart';
import 'package:flutter/material.dart';

class payment_page extends StatefulWidget {
  const payment_page({Key? key}) : super(key: key);

  @override
  State<payment_page> createState() => _payment_pageState();
}

class _payment_pageState extends State<payment_page> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.redAccent,
              height: 260,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Confirm Ticket",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ABC",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "XYZ",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    "Date",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "00:00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Text(
                                  "Bus ID",
                                  style: TextStyle(fontSize: 19),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Text(
                                  "₹Amount",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff6da1c3),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Pay Using",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        CheckboxListTile(
                          title: Text(
                            'Wallet',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          value: _selectedValue == 1,
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                _selectedValue = 1;
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text(
                            'Gpay',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          value: _selectedValue == 2,
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                _selectedValue = 2;
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text(
                            'Amazon Pay',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          value: _selectedValue == 3,
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                _selectedValue = 3;
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text(
                            'Other UPI',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          value: _selectedValue == 4,
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                _selectedValue = 4;
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text(
                            'Cash',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          value: _selectedValue == 5,
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                _selectedValue = 5;
                              }
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Center(
                child: SliderButton(
              action: () async {
                ///Do something here OnSlide
                return true;
              },
              label: Text(
                "Slide to make the payment",
                style: TextStyle(
                    color: Color(0xffea6a6a),
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
                textAlign: TextAlign.center,
              ),
              icon: Text(
                ">",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontSize: 44,
                ),
              ),
              width: 330,
              buttonColor: Color(0xff1701bc),
              backgroundColor: Color(0xffde5959),
              highlightedColor: Colors.white,
            )),
          ],
        ),
      ),
    );
  }
}
