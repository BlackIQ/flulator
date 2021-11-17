import 'package:calculator/app/drawer/items/about.dart';
import 'package:calculator/app/drawer/items/developer.dart';
import 'package:calculator/app/drawer/items/exit.dart';
import 'package:calculator/app/drawer/items/head.dart';
import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

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
                AboutDev(),
                ExitItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
