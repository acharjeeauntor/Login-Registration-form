import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixthclass/register.dart';
import 'package:sixthclass/widgets/button.dart';

import 'mycolor.dart';
import 'widgets/input.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: MyColor().loginColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                    topRight: Radius.circular(80.0)),
              ),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Icon(
                Icons.account_circle,
                size: 70,
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Myinput(
                      myIcon: Icons.person_outline,
                      label: "Username",
                      obscure: false),
                  Myinput(myIcon: Icons.lock, label: "Password", obscure: true),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      margin: EdgeInsets.only(right: 25, top: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ),
                  Mybutton("SIGN IN", MyColor().loginColor),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 17),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: MyColor().loginColor, fontSize: 17),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
