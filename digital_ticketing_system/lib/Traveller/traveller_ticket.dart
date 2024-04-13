// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class User_Ticket extends StatefulWidget {
  const User_Ticket({Key? key}) : super(key: key);

  @override
  State<User_Ticket> createState() => _User_TicketState();
}

class _User_TicketState extends State<User_Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Ticket'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xd2d8d8d8),
            height: 55,
            width: double.infinity,
            child: Center(
              child: Text(
                'Confirmed Date : Day,00-00-00',
                style: TextStyle(fontSize: 19, color: Color(0xff939393)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: const [
                Text(
                  "From : ",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "Secunderabad",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.directions_bus_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "To : ",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "Charminar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Row(
              children: const [
                Text(
                  "Bus Number",
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(
                  width: 85,
                ),
                Text(
                  "Boarding Time",
                  style: TextStyle(fontSize: 19),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 13, 0, 0),
            child: Row(
              children: const [
                Text(
                  "18B",
                  style: TextStyle(fontSize: 21, color: Color(0xff787878)),
                ),
                SizedBox(
                  width: 155,
                ),
                Text(
                  "9:00 PM",
                  style: TextStyle(fontSize: 21, color: Color(0xff787878)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Row(
              children: const [
                Text(
                  "Ticket ID",
                  style: TextStyle(fontSize: 19, color: Color(0xff000000)),
                ),
                SizedBox(
                  width: 115,
                ),
                Text(
                  "Members",
                  style: TextStyle(fontSize: 19, color: Color(0xff000000)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 13, 0, 20),
            child: Row(
              children: const [
                Text(
                  "IN56378759",
                  style: TextStyle(fontSize: 21, color: Color(0xff787878)),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "1",
                  style: TextStyle(fontSize: 21, color: Color(0xff787878)),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Row(
              children: const [
                Icon(
                  Icons.person,
                  size: 29,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Arun Krishna / 20",
                  style: TextStyle(fontSize: 19),
                )
              ],
            ),
          ),
          Container(
            height: 300,
            width: 300,
            child: Image.asset('assets/qrcode.png'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Download',
              style: TextStyle(fontSize: 19),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 45),
              backgroundColor: Color(0xffff8800),
            ),
          )
        ],
      ),
    );
  }
}
