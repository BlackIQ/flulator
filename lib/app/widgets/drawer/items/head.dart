import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'asset/logo.jpg',
          height: 50,
          width: 50,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flulator',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            Text(
              'Open source flutter calculator',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
