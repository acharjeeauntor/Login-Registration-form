import 'package:flutter/material.dart';
import 'package:sixthclass/mycolor.dart';

class MyText extends StatelessWidget {
  String text;
  MyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(this.text,
        style: TextStyle(
            color: MediaQuery.of(context).orientation == Orientation.portrait
                ? MyColor().color2
                : Colors.green));
  }
}
