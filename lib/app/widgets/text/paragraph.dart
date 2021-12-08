import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  ParagraphText({@required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
        color: Colors.teal,
      ),
    );
  }
}
