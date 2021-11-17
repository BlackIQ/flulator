import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({@required this.icon, @required this.text, @required this.onTap});
  final icon;
  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.teal,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
