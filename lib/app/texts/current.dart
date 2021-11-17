import 'package:flutter/material.dart';

class CurrentStatus extends StatelessWidget {
  CurrentStatus({@required this.number});
  final number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      style: TextStyle(
        color: Colors.grey,
        fontSize: 30.0,
      ),
    );
  }
}
