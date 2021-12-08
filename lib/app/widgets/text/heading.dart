import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading({@required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.teal,
      ),
    );
  }
}
