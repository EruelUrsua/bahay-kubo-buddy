import 'dart:async';
import 'package:bahay_kubo_buddy/screens/greeting.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeState createState() => new _WelcomeState();
}

class _WelcomeState extends State<WelcomeScreen> {
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
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50),
            child: Image.asset('assets/images/bkbuddy.jpg'),
          ),
        ],
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(
      new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new GreetingScreen(),
        transitionDuration: const Duration(milliseconds: 250),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(child: child, opacity: anim1);
        },
      ),
    );
  }
}
