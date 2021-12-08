import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WideButton extends StatelessWidget {
  WideButton({
    @required this.onTap,
    @required this.text,
    @required this.icon,
  });

  final onTap;
  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Container(
        height: 45,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FaIcon(
                icon,
              ),
              SizedBox(width: 25),
              Text(
                text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}