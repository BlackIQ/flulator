import 'package:calculator/app/developer.dart';
import 'package:calculator/app/flulator.dart';
import 'package:flutter/material.dart';

class OpenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Flulator()
            )
        );
      },
      title: Row(
        children: <Widget>[
          Icon(
            Icons.android,
            color: Colors.teal,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            "App",
            style: TextStyle(
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
