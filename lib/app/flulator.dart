import 'package:calculator/app/buttons/buttons.dart';
import 'package:calculator/app/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FluDrawer(),
      appBar: AppBar(
        title: Text(
          'Flutter',
          style: GoogleFonts.boogaloo(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: FluButton(
          text: 'Amir',
          fillColor: Colors.teal,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
