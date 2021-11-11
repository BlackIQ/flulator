import 'package:flutter/material.dart';

class OperatorButton extends StatelessWidget {
  OperatorButton({@required this.operator});
  final operator;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        operator,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)
        ),
        side: BorderSide(
            color: Colors.orange,
        ),
      ),
      color: Colors.orange,
      onPressed: () {},
    );
  }
}
