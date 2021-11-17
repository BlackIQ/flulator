import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Flulator",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.teal,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "Flutter simple calculator",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
