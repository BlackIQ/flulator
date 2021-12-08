import 'package:flulator/app/pro/pro_cal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flulator/app/widgets/drawer/drawer_item.dart';
import 'package:flulator/app/pages/application.dart';
import 'package:flulator/app/pages/development.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../../flulator.dart';

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
          DrawerItem(
            icon: FontAwesomeIcons.equals,
            text: 'Normal Calculator',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => Flulator(),
                ),
              );
            },
          ),
          DrawerItem(
            icon: FontAwesomeIcons.squareRootAlt,
            text: 'Pro Calculator',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => ProCalculator(),
                ),
              );
            },
          ),
          Divider(color: Colors.teal),
          DrawerItem(
            icon: FontAwesomeIcons.infoCircle,
            text: 'About App',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => Application(),
                ),
              );
            },
          ),
          DrawerItem(
            icon: FontAwesomeIcons.tools,
            text: 'Development',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => Development(),
                ),
              );
            },
          ),
          DrawerItem(
            icon: FontAwesomeIcons.signOutAlt,
            text: 'Exit',
            onTap: () => exit(1),
          ),
        ],
      ),
    );
  }
}
