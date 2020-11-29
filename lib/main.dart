import 'package:bahay_kubo_buddy/screens/welcome.dart';
import 'package:bahay_kubo_buddy/screens/config/config1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins-Reg',
      ),
      home: WelcomeScreen(),
    );
  }
}
