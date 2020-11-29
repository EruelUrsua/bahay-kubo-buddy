import 'package:flutter/material.dart';

class myButtons extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<myButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _buttonColor1 = Colors.teal;
                });
              },
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Text('Monday'),
              color: _buttonColor1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              onPressed: () {
                setState(() {
                  _buttonColor2 = Colors.redAccent;
                });
              },
              child: Text('Tuesday'),
              color: _buttonColor2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _buttonColor3 = Colors.yellowAccent;
                });
              },
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Text('Wednesday'),
              color: _buttonColor3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _buttonColor4 = Colors.lightGreen;
                });
              },
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Text('Thursday'),
              color: _buttonColor4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _buttonColor5 = Colors.deepOrangeAccent;
                });
              },
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Text('Friday'),
              color: _buttonColor5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _buttonColor6 = Colors.pinkAccent;
                });
              },
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Text('Saturday'),
              color: _buttonColor6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Color _buttonColor1 = Colors.white30;
  Color _buttonColor2 = Colors.white30;
  Color _buttonColor3 = Colors.white30;
  Color _buttonColor4 = Colors.white30;
  Color _buttonColor5 = Colors.white30;
  Color _buttonColor6 = Colors.white30;
}
