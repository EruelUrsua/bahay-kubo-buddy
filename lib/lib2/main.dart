import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './main_drawer.dart';
import './mypage.dart';
import './modules.dart';

class UserHome extends StatefulWidget {
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bahay kubo'),
        backgroundColor: Colors.green[300],
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              text: "Modules",
            ),
            new Tab(
              text: "Aking Pahina",
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    '''Maligayang Pagdating,
                Juan!'''
                    '',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//controller;
//@override
//void initState() {
//super.initState();
//controller = new new Tabcontroller(vsync: this, lenght: 2);
