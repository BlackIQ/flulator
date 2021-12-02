import 'package:flulator/app/drawer/items/about.dart';
import 'package:flulator/app/drawer/items/app.dart';
import 'package:flulator/app/drawer/items/exit.dart';
import 'package:flulator/app/drawer/items/head.dart';
import 'package:flutter/material.dart';

class FluDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                image: AssetImage("asset/header.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flulator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Lite Flutter calculator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          OpenApp(),
          AboutItem(),
          ExitItem(),
        ],
      ),
    );
  }
}
