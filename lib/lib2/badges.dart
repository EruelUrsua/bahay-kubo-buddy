import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';
import './main.dart';

class Badges extends StatefulWidget {
  @override
  _BadgesState createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bahay kubo'),
        backgroundColor: Colors.green[300],
        bottom: TabBar(
          tabs: [
            Tab(
              text: "Modules",
            ),
            Tab(
              text: "Aking Pahina",
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
