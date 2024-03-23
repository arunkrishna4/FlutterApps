// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Conductor_HomePage extends StatelessWidget {
  const Conductor_HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conductor'),
          backgroundColor: Colors.amber,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                color: Color.fromARGB(255, 1, 1, 1),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
          ],
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 19, 18, 18),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(45), bottomEnd: Radius.circular(45))),
          child: ListView(
            // Important: Remove any padding from the ListView.
            children: [
              const UserAccountsDrawerHeader(
                // <-- SEE HERE
                decoration: BoxDecoration(color: Colors.amber),
                accountName: Text(
                  "UserName",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "User Email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                currentAccountPicture: FlutterLogo(),
              ),

              // Track Your Bus button
              ListTile(
                leading: Icon(
                  Icons.chair_alt_rounded,
                ),
                title: const Text(
                  'Seat Map',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),

              //Bus Routes button

              ListTile(
                leading: Icon(
                  Icons.route_sharp,
                ),
                title: const Text('Bus Route',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),

              //Ticket button

              ListTile(
                leading: Icon(
                  Icons.emergency_share,
                ),
                title: const Text(
                  'Emergency',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.emergency_share,
                ),
                title: const Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
