import 'dart:async';
import 'package:bahay_kubo_buddy/lib2/main.dart';
import 'package:bahay_kubo_buddy/screens/greeting.dart';
import 'package:flutter/material.dart';

class successPage extends StatefulWidget {
  @override
  _successPageState createState() => _successPageState();
}

class _successPageState extends State<successPage> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 3), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/check2.jpg',
                height: 150,
                width: 150,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Success!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(
      new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new UserHome(),
        transitionDuration: const Duration(milliseconds: 250),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(child: child, opacity: anim1);
        },
      ),
    );
  }
}
