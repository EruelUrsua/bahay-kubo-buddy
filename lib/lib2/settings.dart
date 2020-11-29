import 'package:flutter/material.dart';
import './main_drawer.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      children: <Widget>[
        child: Column(
    children: <Widget>[
        ListTile(


            title: Text(
              '                  Settings',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            onTap: null
        ),




        ListTile(
          title: Text(
            '                 Parental Controls',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,


        ),


        ListTile(
          title: Text(
            '                  Study Day',
            style: TextStyle(
              fontSize: 18,

            ),

          ),
          onTap: null,
        ),
        ],),
      ),

    );
  }
}
