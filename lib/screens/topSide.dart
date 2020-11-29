import 'package:bahay_kubo_buddy/screens/topSide.dart';
import 'package:flutter/material.dart';

class topSide extends StatefulWidget {
  @override
  _topSide createState() => _topSide();
}

class _topSide extends State<topSide> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/bkbuddy1.jpg',
              height: 67,
              width: 67,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
