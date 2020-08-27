import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  String text;
  Color myColor;
  Mybutton(this.text, this.myColor);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlueAccent.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 6), // changes position of shadow
              ),
            ],
            color: myColor,
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
