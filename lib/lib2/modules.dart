import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';
import './main.dart';

class MyModules extends StatefulWidget {
  @override
  _MyModulesState createState() => _MyModulesState();
}

class _MyModulesState extends State<MyModules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nagawang Modules'),

        backgroundColor: Colors.green[200],
      ),
      body: Container(
    child : Text(
    'Lingo 1',
    style: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontSize: 23, ),

      ),

      ),
      
    );
  }
}
