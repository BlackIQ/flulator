import 'package:calculator/app/drawer/items/about.dart';
import 'package:calculator/app/drawer/items/contact.dart';
import 'package:calculator/app/drawer/items/item.dart';
import 'package:flutter/material.dart';

import 'items/head.dart';

class FluDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DrawerHead(),
                Divider(color: Colors.teal),
                AboutItem(),
                ContactItem(),
                DrawerItem(icon: Icons.exit_to_app, text: "Exit", onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
