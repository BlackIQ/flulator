import 'package:flulator/app/pages/developer.dart';
import 'package:flulator/app/widgets/drawer/drawer_item.dart';
import 'package:flutter/material.dart';
import 'dart:io';

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
            icon: Icons.info_outline,
            text: 'About App',
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
              );
            },
          ),
          DrawerItem(
            icon: Icons.laptop_mac,
            text: 'Developer',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => Developer(),
                ),
              );
            },
          ),
          DrawerItem(
            icon: Icons.exit_to_app,
            text: 'Exit',
            onTap: () => exit(1),
          ),
        ],
      ),
    );
  }
}
