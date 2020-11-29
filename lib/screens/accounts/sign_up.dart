import 'package:bahay_kubo_buddy/screens/config/config1.dart';
import 'package:bahay_kubo_buddy/screens/greeting.dart';
import 'package:bahay_kubo_buddy/screens/accounts/sign_with_email.dart';
import 'package:bahay_kubo_buddy/screens/topSide.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => new _SignUp();
}

class _SignUp extends State<SignUp> {
  bool _passwordVisible = true;

  get _userPasswordController => null;

  @override
  initState() {
    _passwordVisible = false;
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  void validateAndSave() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            topSide(),
            Text(
              "Create Your Child's Profile",
              style: TextStyle(
                fontFamily: 'Poppins-SemiBold',
                fontSize: 20,
              ),
            ),
            bottomField(),
          ],
        ),
      ),
    );
  }

  Widget bottomField() {
    return Container(
      padding: EdgeInsets.only(left: 45, right: 45, bottom: 45, top: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Child\'s Name',
                labelStyle: TextStyle(
                  fontFamily: 'Poppins-Med',
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please provide your name.';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
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
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 18.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _userPasswordController,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins-Med',
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      }),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please provide your password.';
                  }
                  return null;
                },
              ),
            ),
            Text(
              'By creating your Profile, you agree',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              child: Text(
                'with our T&C.',
                style: TextStyle(
                  fontSize: 10,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Builder(builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(top: 9.0, bottom: 9.0),
                child: RaisedButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Poppins-Med',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Registered! Please go back to Sign In.'),
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Config_1(),
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
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignWithEmail(),
                    ),
                  );
                },
                child: Text(
                  'or Sign In',
                  style: TextStyle(fontFamily: 'Poppins-SemiBold'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
