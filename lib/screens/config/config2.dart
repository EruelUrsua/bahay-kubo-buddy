import 'package:bahay_kubo_buddy/screens/config/buttons.dart';
import 'package:bahay_kubo_buddy/screens/greeting.dart';
import 'package:flutter/material.dart';

import '../topSide.dart';
import 'success.dart';

class Config_2 extends StatefulWidget {
  @override
  _Config_2 createState() => _Config_2();
}

class _Config_2 extends State<Config_2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          topSide(),
          Column(
            children: [
              Text(
                "I-Set Up Ang Account",
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 20,
                ),
              ),
              Text(
                "ng Iyong Anak",
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 20,
                ),
              )
            ],
          ),
          studyDays(),
          textsAraw(),
        ],
      ),
    );
  }

  Widget studyDays() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 45, right: 140),
          child: Text(
            'Study Days',
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }

  Widget textsAraw() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28, right: 13),
          child: Text(
            'I-set up ang mga araw para sa',
            style: TextStyle(
              fontFamily: 'Poppins-Reg',
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9, right: 56, bottom: 35),
          child: Text(
            'pag-aaral ng iyong anak.',
            style: TextStyle(
              fontFamily: 'Poppins-Reg',
              fontSize: 14,
            ),
          ),
        ),
        myButtons(),
        FlatButton(
          padding: EdgeInsets.symmetric(vertical: 6),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Config_2(),
              ),
            );
          },
          child: Text(
            '> Umulit <',
            style: TextStyle(
              fontFamily: 'Poppins-Med',
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => successPage(),
              ),
            );
          },
          child: Text(
            'Tapos Na >',
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
            ),
          ),
        ),
      ],
    );
  }
}
