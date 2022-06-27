// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
        backgroundColor: Colors.white,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "Welcome Back !!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
              child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabcontroller,
                labelColor: Colors.black,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "Featured",
                  ),
                  Tab(
                    text: "Cricket",
                  ),
                  Tab(
                    text: "Badminton",
                  ),
                  Tab(
                    text: "Football",
                  ),
                ]),
          )),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 250,
            width: double.maxFinite,
            child: TabBarView(controller: _tabcontroller, children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15, top: 10),
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  );
                },
              ),
              Text("2"),
              Text("3"),
              Text("4"),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore More",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("see more",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
