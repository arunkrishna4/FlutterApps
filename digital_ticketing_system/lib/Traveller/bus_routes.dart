import 'package:flutter/material.dart';

class bus_routes extends StatefulWidget {
  const bus_routes({Key? key}) : super(key: key);

  @override
  State<bus_routes> createState() => _bus_routesState();
}

class _bus_routesState extends State<bus_routes> {
  final border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bus Routes',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/bus routes.jpg'),
            ),
            const Divider(
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Enter the stops',
                style: TextStyle(fontSize: 26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Source",
                      prefixIcon: const Icon(
                        Icons.pin_drop,
                        color: Colors.black,
                      ),
                      focusedBorder: border,
                      enabledBorder: border,
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      )
                      // suffixIcon: Icon(Icons.arrow_circle_down)),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Destination",
                      prefixIcon: const Icon(
                        Icons.pin_drop,
                        color: Colors.black,
                      ),
                      focusedBorder: border,
                      enabledBorder: border,
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      )
                      // suffixIcon: Icon(Icons.arrow_circle_down)),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Search',
                  style: TextStyle(fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40), backgroundColor: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
