import 'package:flutter/material.dart';
import 'package:messagingapp/pages/widgets/activechats.dart';
import 'package:messagingapp/pages/widgets/recentchats.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Text(
            'Messages',
            style: TextStyle(
                fontSize: 28,
                color: Color(0xFF113953),
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3,
                      spreadRadius: 2,
                      offset: Offset(0, 3))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search", border: InputBorder.none),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Color(0xFF113953),
                )
              ],
            ),
          ),
        ),
        ActiveChats(),
        RecentChats(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF113953),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
