import 'package:bahay_kubo_buddy/screens/accounts/forgot_password.dart';
import 'package:bahay_kubo_buddy/screens/accounts/sign_up.dart';
import 'package:bahay_kubo_buddy/screens/config/config1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../topSide.dart';

class SignWithEmail extends StatefulWidget {
  @override
  _SignWithEmail createState() => new _SignWithEmail();
}

class _SignWithEmail extends State<SignWithEmail> {
  bool _passwordVisible = true;

  get _userPasswordController => null;

  @override
  initState() {
    _passwordVisible = false;
    super.initState();
  }

  String _email;
  String _password;
  final _formKey = GlobalKey<FormState>();

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          topSide(),
          Text(
            "Sign In",
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 20,
            ),
          ),
          signIn(),
        ],
      ),
    );
  }

  Widget signIn() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 22, left: 42, right: 42),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  bottom: 8.0,
                ),
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
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 25,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _userPasswordController,
                  obscureText: !_passwordVisible,
                  //This will obscure text dynamically
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
              Builder(builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: RaisedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins-Med',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Signing in...'),
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
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  'or Sign Up',
                  style: TextStyle(fontFamily: 'Poppins-SemiBold'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> signIn() async {
  //   final formState = _formKey.currentState;
  //   if (formState.validate()) {
  //     formState.save();
  //     try {
  //       FirebaseAuth _auth = await FirebaseAuth.instance
  //           .signInWithEmailAndPassword(email: _email, password: _password);
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) {
  //             Config_1(user: user);
  //           },
  //         ),
  //       );
  //     } catch (e) {
  //       print(e.message);
  //     }
  //   }
  // }
}
