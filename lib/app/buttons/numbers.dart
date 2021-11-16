import 'package:flutter/material.dart';

class NumericButtons extends StatelessWidget {
  NumericButtons({@required this.number});
  final number;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        number,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)
        ),
        side: BorderSide(
          color: Colors.teal,
        ),
      ),
      color: Colors.white,
      onPressed: () {},
    );
  }
}
