// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        
        actions: [
          IconButton(     
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                  'No new notifications',
                  style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
                )));
              },
              icon: Icon(Icons.notifications)),
              SizedBox(width: 11),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "drawer",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
