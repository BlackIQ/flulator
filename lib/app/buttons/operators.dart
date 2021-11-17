import 'package:flutter/material.dart';

class OperatorButton extends StatelessWidget {
  OperatorButton({@required this.operator});
  final operator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RaisedButton(
        child: Text(
          operator,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: Colors.teal,
          ),
        ),
        color: Colors.teal,
      ),
      width: 60,
      height: 50,
    );
  }
}
