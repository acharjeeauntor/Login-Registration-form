import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixthclass/login.dart';
import 'package:sixthclass/mycolor.dart';
import 'package:sixthclass/widgets/input.dart';

import 'widgets/button.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: MyColor().registerColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                    topRight: Radius.circular(80.0)),
              ),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Myinput(
                      myIcon: Icons.person_outline,
                      label: "Username",
                      obscure: false),
                  Myinput(
                      myIcon: Icons.person, label: "Fullname", obscure: false),
                  Myinput(myIcon: Icons.email, label: "Email", obscure: false),
                  Myinput(myIcon: Icons.lock, label: "Password", obscure: true),
                  Myinput(
                      myIcon: Icons.security,
                      label: "Confirm Password",
                      obscure: true),
                  Mybutton("SIGN UP", MyColor().registerColor),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(fontSize: 17),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.lightBlueAccent, fontSize: 17),
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
