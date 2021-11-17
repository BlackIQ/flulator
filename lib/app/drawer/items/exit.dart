import 'dart:io';

import 'package:flutter/material.dart';

class ExitItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => exit(0),
      title: Row(
        children: <Widget>[
          Icon(
            Icons.exit_to_app,
            color: Colors.teal,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            "Exit",
            style: TextStyle(
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
