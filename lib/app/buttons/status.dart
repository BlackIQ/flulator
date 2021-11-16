import 'package:flutter/material.dart';

class StatusButons extends StatelessWidget {
  StatusButons({@required this.option});
  final option;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        option,
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
            color: Colors.teal[300],
        ),
      ),
      color: Colors.teal[300],
      onPressed: () {},
    );
  }
}
