import 'package:flulator/app/drawer/items/developer.dart';
import 'package:flutter/material.dart';

class AboutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showAboutDialog(
          applicationIcon: Image.asset(
            'asset/logo.jpg',
            height: 50,
            width: 50,
          ),
          context: context,
          applicationName: 'Flulator',
          applicationVersion: '1.1.0',
          applicationLegalese: 'Flutter simple calculator',
          children: <Widget>[
            SizedBox(height: 20),
            Divider(color: Colors.teal),
            SizedBox(height: 10),
            Text(
              'Who is my developer? Check this out!',
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
            AboutDev(),
            Text(
              'Check out my web page too.',
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(
                    Icons.cloud,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Open flulator.blackiq.ir",
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  )
                ],
              ),
            )
          ],
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
