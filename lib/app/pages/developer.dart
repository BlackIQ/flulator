import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'About developer',
          style: GoogleFonts.boogaloo(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 20,
            ),
            Text(
              'You can check this site to see more information about me :)',
              style: GoogleFonts.boogaloo(
                color: Colors.teal,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
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
    );
  }
}
