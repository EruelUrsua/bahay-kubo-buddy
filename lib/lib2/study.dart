import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main.dart';

class StudyDay extends StatefulWidget {
  @override
  _StudyDayState createState() => _StudyDayState();
}

class _StudyDayState extends State<StudyDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      Row:   
      Children: <Widget> [

        child: ListTile(


            title: Text(
              '                  Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null
        ),
      ),




        ListTile(
          title: Text(
            '                 Settings',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,


        ),


        ListTile(
          title: Text(
            '                  Logout',
            style: TextStyle(
              fontSize: 18,

            ),

          ),
          onTap: null,
        ),
    ]
    );
  }
}
