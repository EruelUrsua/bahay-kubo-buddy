import 'package:firebase_auth/firebase_auth.dart';
import 'package:bahay_kubo_buddy/screens/config/config2.dart';
import 'package:bahay_kubo_buddy/screens/accounts/sign_with_email.dart';
import 'package:flutter/material.dart';

import '../topSide.dart';

class Config_1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Config_1> {
  bool isSwitched = false;
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
            mainAxisAlignment: MainAxisAlignment.center,
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
          notifConfig(),
          textsAllow(),
        ],
      ),
    );
  }

  Widget notifConfig() {
    return Container(
      padding: EdgeInsets.only(top: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Notifications',
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 17,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget textsAllow() {
    return Column(
      children: [
        Text(
          'I-allow ang notifications upang mas',
          style: TextStyle(
            fontFamily: 'Poppins-Reg',
            fontSize: 14,
          ),
        ),
        Text(
          'maranasan ang best experience ng',
          style: TextStyle(
            fontFamily: 'Poppins-Reg',
            fontSize: 14,
          ),
        ),
        Text(
          'app na ito. I-tap ang switch upang',
          style: TextStyle(
            fontFamily: 'Poppins-Reg',
            fontSize: 14,
          ),
        ),
        Text(
          'tumuloy.',
          style: TextStyle(
            fontFamily: 'Poppins-Reg',
            fontSize: 14,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: FlatButton(
            onPressed: () async {
              if (isSwitched) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Config_2(),
                  ),
                );
              }
              return {};
            },
            child: Text(
              'Susunod >',
              style: TextStyle(
                fontFamily: 'Poppins-SemiBold',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
