import 'package:bahay_kubo_buddy/screens/accounts/sign_with_email.dart';
import 'package:flutter/material.dart';

import '../topSide.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPassword createState() => new _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPassword> {
  @override
  initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  String _email;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          topSide(),
          Text(
            "Forgot Password",
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 20,
            ),
          ),
          bottomField(),
        ],
      ),
    );
  }

  Widget bottomField() {
    return Container(
      padding: EdgeInsets.only(top: 22, left: 42, right: 42),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              bottom: 8.0,
            ),
            child: Form(
              key: _formKey,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins-Med',
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please provide your email.';
                  }
                  return null;
                },
              ),
            ),
          ),
          Builder(builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 60,
              ),
              child: RaisedButton(
                child: Text(
                  'Send',
                  style: TextStyle(
                    fontFamily: 'Poppins-Med',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Sent a Retrieval of Password Email'),
                      ),
                    );
                  }
                },
                color: Colors.black,
                padding: EdgeInsets.symmetric(
                  horizontal: 38,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
