import 'package:flutter/material.dart';

class Booking_page extends StatefulWidget {
  const Booking_page({Key? key}) : super(key: key);

  @override
  State<Booking_page> createState() => _Booking_pageState();
}

class _Booking_pageState extends State<Booking_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Booking', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90.0),
                  bottomRight: Radius.circular(90.0),
                ),
                color: Colors.amber,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(90, 50, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "ABC",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 30,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "XYZ",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "date",
                    style: TextStyle(fontSize: 25),
                  ),
                  Image.asset(
                    'assets/photoflutter.png',
                    fit: BoxFit.contain,
                    height: 150,
                    width: 150,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 80,
                color: Colors.grey,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "ABC -> XYZ",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            "23:20",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "15 seats left",
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 80,
                color: Colors.grey,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "ABC -> XYZ",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            "23:20",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "15 seats left",
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 80,
                color: Colors.grey,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "ABC -> XYZ",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            "23:20",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "15 seats left",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
