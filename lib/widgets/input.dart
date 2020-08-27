import 'package:flutter/material.dart';

class Myinput extends StatelessWidget {
  IconData myIcon;
  String label;
  bool obscure;

  Myinput({this.myIcon, this.label, this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30.0))),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            labelText: label,
            prefixIcon: Icon(
              myIcon,
              color: Colors.blue,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto),
      ),
    );
  }
}
