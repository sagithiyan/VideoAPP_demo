// ignore: file_names
// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_profile.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.blue, Colors.blue.shade200])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Text(
                      "Welocome to TellnShare",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 20, right: 40),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "A Space for your Thoughts",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 50),
                  ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 30.0,
                    fontSize: 16.0,
                    initialLabelIndex: initialIndex,
                    activeBgColor: [Colors.blue.shade900],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.blue.shade100,
                    inactiveFgColor: Colors.grey[900],
                    totalSwitches: 2,
                    labels: [
                      'SignIn',
                      'SignUp',
                    ],
                    onToggle: (index) {
                      print('switched index: $index');
                      setState(() {
                        initialIndex = index;
                      });
                    },
                  ),
                ],
              ),
            ),
            initialIndex == 1
                ? Expanded(
                    child: Container(
                    height: 900,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 30, right: 50),
                          child: Text(
                            "Register with your social media account or with your mobile number ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.facebook_outlined,
                                  color: Colors.blue.shade500,
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 230.0,
                          height: 50,
                          child: RaisedButton(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.blue[900],
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserAccount()),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Already a member ? Sign in now"),
                        ),
                        Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ))
                : Expanded(
                    child: Container(
                    height: 700,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.facebook_outlined,
                                  color: Colors.blue.shade500,
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 330.0,
                          height: 50,
                          child: RaisedButton(
                            child: Text(
                              'Sign in with your email',
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserAccount()),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ButtonTheme(
                            minWidth: 330.0,
                            height: 50,
                            child: RaisedButton(
                              child: Text(
                                'Sign in with your mobile',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.blue[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserAccount()),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Not a member ? Register now"),
                        ),
                        Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
