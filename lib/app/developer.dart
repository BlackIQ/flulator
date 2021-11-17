import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer/drawer.dart';

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: FluDrawer(),
      appBar: AppBar(
        title: Text(
          'About developer',
          style: GoogleFonts.boogaloo(),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Amirhossein Mohammadi',
                  style: GoogleFonts.boogaloo(
                    color: Colors.teal,
                    fontSize: 40,
                  ),
                ),
                Text(
                  'Full stack developer',
                  style: GoogleFonts.boogaloo(
                    color: Colors.teal[300],
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'BlackIQ.ir',
                  style: GoogleFonts.boogaloo(
                    color: Colors.teal,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
