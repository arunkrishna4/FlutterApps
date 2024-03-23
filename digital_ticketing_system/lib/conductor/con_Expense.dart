import 'package:flutter/material.dart';

class expense_page extends StatefulWidget {
  const expense_page({Key? key}) : super(key: key);

  @override
  State<expense_page> createState() => _expense_pageState();
}

class _expense_pageState extends State<expense_page> {
  final border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff00447c),
        appBar: AppBar(
          title: Text(
            'Expense',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 100, 0, 0),
              child: Text("How much?",
                  style: TextStyle(color: Colors.grey, fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 10, 0, 50),
              child: Text(
                "₹0",
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            Container(
              height: 490,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(40.0), // Set radius for top left corner
                  topRight: Radius.circular(40.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 40, 20, 0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Date',
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        fillColor: Color(0xff000000),
                        hintStyle: TextStyle(color: Color(0xffffffff)),
                        filled: true,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Category',
                        hintStyle: TextStyle(color: Color(0xffffffff)),
                        fillColor: Color(0xff000000),
                        filled: true,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Description',
                        hintStyle: TextStyle(color: Color(0xffffffff)),
                        fillColor: Color(0xff000000),
                        filled: true,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff000000), // Set background color
                        onPrimary: Colors.grey, // Set text color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.attach_file),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add Attachment',
                              style: TextStyle(fontSize: 19),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Add",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 50),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
