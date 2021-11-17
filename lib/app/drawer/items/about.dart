import 'package:flutter/material.dart';

class AboutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showAboutDialog(
          context: context,
          applicationName: 'Flulator',
          applicationVersion: '1.0.0',
          applicationLegalese: 'Flutter simple flulator',
        );
      },
      title: Row(
        children: <Widget>[
          Icon(
            Icons.perm_device_information,
            color: Colors.teal,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            "About app",
            style: TextStyle(
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
