import 'package:bahay_kubo_buddy/screens/welcome.dart';
import 'package:bahay_kubo_buddy/screens/accounts/sign_with_email.dart';
import 'package:bahay_kubo_buddy/screens/accounts/sign_up.dart';
import 'package:flutter/material.dart';

class GreetingScreen extends StatefulWidget {
  @override
  _GreetingScreen createState() => _GreetingScreen();
}

class _GreetingScreen extends State<GreetingScreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                topSide(),
                bottomSide(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget topSide() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 120),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/bkbuddy1.jpg',
              height: 101,
              width: 101,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Kumusta,",
              style: TextStyle(
                fontFamily: 'Poppins-Med',
                color: Color(0xff00966D),
                fontSize: 32,
                height: 0.3,
              ),
            ),
            Text(
              "Chikiting?",
              style: TextStyle(
                fontFamily: 'Poppins-Med',
                color: Color(0xffD2A2EB),
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomSide() {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[],
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    'Sign in with Email',
                    style: TextStyle(
                      fontFamily: 'Poppins-Med',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignWithEmail(),
                      ),
                    );
                  },
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(
                    horizontal: 58,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ],
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
