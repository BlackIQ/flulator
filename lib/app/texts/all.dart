import 'package:flutter/material.dart';

class AllStatus extends StatelessWidget {
  AllStatus({@required this.number});
  final number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: TextStyle(
        fontSize: 50.0,
      ),
    );
  }
}
