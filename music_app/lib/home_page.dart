// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({
    super.key,
  });
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Lyriqz'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 100, 3, 127),
            height: 250,
            width: 550,
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: Text(item),
              );
            },
          ),
          Text('Latest Songs',
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.abc),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ABC',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          const Text('hello'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Shazam',
        child: const Icon(Icons.music_note),
      ),
    );
  }
}
