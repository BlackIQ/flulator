import 'package:flutter/material.dart';

class AboutDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showAboutDialog(
          context: context,
          applicationName: 'Flulator',
          applicationVersion: '1.0.0',
          applicationLegalese: 'Flutter simple calculator',
        );
      },
      title: Row(
        children: <Widget>[
          Icon(
            Icons.devices,
            color: Colors.teal,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            "About developer",
            style: TextStyle(
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
