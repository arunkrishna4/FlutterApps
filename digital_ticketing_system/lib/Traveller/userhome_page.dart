import 'package:digital_ticketing_system/Traveller/booking.dart';
import 'package:digital_ticketing_system/Traveller/bus_routes.dart';
import 'package:digital_ticketing_system/Traveller/traveller_ticket.dart';
import 'package:digital_ticketing_system/Traveller/wallet.dart';
import 'package:digital_ticketing_system/UserProfile/user_profile.dart';
import 'package:flutter/material.dart';

class userhome_page extends StatefulWidget {
  const userhome_page({Key? key}) : super(key: key);

  @override
  State<userhome_page> createState() => _userhome_pageState();
}

class _userhome_pageState extends State<userhome_page> {
  @override
  Widget build(BuildContext context) {
    final border = const OutlineInputBorder(
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
        appBar: AppBar(
          title: const Text(
            "E-Ticketing",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                color: Colors.white,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 19, 18, 18),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(45), bottomEnd: Radius.circular(45))),
          child: ListView(
            // Important: Remove any padding from the ListView.
            children: [
              UserAccountsDrawerHeader(
                // <-- SEE HERE
                decoration: const BoxDecoration(color: Color(0xff764abc)),
                accountName: const Text(
                  "UserName",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: const Text(
                  "User Email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const User_Profile())));
                  },
                  child: const FlutterLogo(),
                ),
              ),

              // Track Your Bus button
              ListTile(
                leading: const Icon(
                  Icons.bus_alert_rounded,
                  color: Colors.white,
                ),
                title: const Text(
                  'Track Your Bus',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),

              //Bus Routes button

              ListTile(
                leading: const Icon(
                  Icons.route_sharp,
                  color: Colors.white,
                ),
                title: const Text('Bus Routes',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const bus_routes(),
                    ),
                  );
                },
              ),

              //Ticket button

              ListTile(
                leading: const Icon(
                  Icons.qr_code_2_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  'Your Ticket',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const User_Ticket(),
                    ),
                  );
                },
              ),

              // Bus Wallet
              ListTile(
                leading: const Icon(
                  Icons.wallet,
                  color: Colors.white,
                ),
                title: const Text(
                  'Wallet',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const wallet_page(),
                    ),
                  );
                },
              ),
              //Emergency button

              ListTile(
                leading: const Icon(
                  Icons.emergency_share,
                  color: Colors.white,
                ),
                title: const Text(
                  'Emergency',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),

              //sign out button

              ListTile(
                leading: const Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
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
        body: Stack(
          children: [
            // Expanded containers (fill remaining space)
            Column(
              children: [
                Expanded(
                    child: Container(
                  color: const Color(0xfff66262),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        const Text(
                          'Hello User\nWhere do you want to go ',
                          style: TextStyle(fontSize: 26),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                            height: 150,
                            width: 200,
                            child: Image.asset('assets/userpagebus.png')),
                      ],
                    ),
                  ),
                )),
                Expanded(child: Container(color: Colors.white)),
              ],
            ),

            // Overlay container (centered)
            Positioned(
              top: (MediaQuery.of(context).size.height - 350) /
                  2, // Center vertically
              left: (MediaQuery.of(context).size.width - 350) /
                  2, // Center horizontally
              child: Container(
                color: Colors.amber,
                height: 350,
                width: 350,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          // Keep the hint text and border styling as needed
                          hintText: "Enter your stop",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white, // White border color
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)), // Rounded corners
                          ),
                          // **Corrected property order and redundant placeholder:**
                          fillColor: Colors.white, // Set background color
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Positioned(
                            bottom: 10.0, // Adjust positioning as needed
                            right: 10.0, // Adjust positioning as needed
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: const Icon(Icons.swap_vert),
                            ),
                          )
                        ],
                      ),
                    ), // Add spacing between text fields
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your destination stop",
                          focusedBorder: border,
                          enabledBorder: border, // Placeholder text
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 40, 20),
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(150.0, 40.0)),
                              side: MaterialStateProperty.all(const BorderSide(
                                  color: Colors.white, width: 2.0)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        16.0)), // Add border radius
                              ),
                            ),
                            child: const Text(
                              '- 1 Passengers +',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(100.0, 40.0)),
                              side: MaterialStateProperty.all(const BorderSide(
                                  color: Colors.white, width: 2.0)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        16.0)), // Add border radius
                              ),
                            ),
                            child: const Text(
                              "Time",
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 13, 20, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Booking_page(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              const Size(300.0, 40.0)),
                        ),
                        child: const Text("Search"),
                      ),
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
