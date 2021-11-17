import 'dart:io';

import 'package:flutter/material.dart';

class ExitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)
        ),
        side: BorderSide(
          color: Colors.teal[300],
        ),
      ),
      color: Colors.teal[300],
      onPressed: () {
        exit(0);
      },
    );
  }
}
