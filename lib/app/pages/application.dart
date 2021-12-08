import 'package:flulator/app/widgets/buttons/wide_button.dart';
import 'package:flulator/app/widgets/text/heading.dart';
import 'package:flulator/app/widgets/text/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'development.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'About application',
          style: GoogleFonts.boogaloo(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Heading(text: 'Overview'),
            SizedBox(height: 10),
            ParagraphText(
                text:
                    'Flulator is a simple free open source calculator powered by Flutter.'),
            SizedBox(height: 15),
            Heading(text: 'Features'),
            SizedBox(height: 10),
            ParagraphText(
                text:
                    "In fact Flulator doesn't have too much features but from 4th release, Pro Calculator is available."),
            Divider(color: Colors.teal),
            ParagraphText(
                text:
                    "To read about development and other things, check out development page in drawer of by tapping button below."),
            SizedBox(height: 10),
            WideButton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => Development(),
                  ),
                );
              },
              text: 'Development',
              icon: FontAwesomeIcons.tools,
            ),
            SizedBox(height: 20),
            ParagraphText(
                text:
                "For more information, head over to Flulator web page.",),
            SizedBox(height: 10),
            WideButton(
              onTap: () async {
                await launch('https://flulator.blackiq.ir');
              },
              text: 'Flulator.BlackIQ.ir',
              icon: FontAwesomeIcons.desktop,
            ),
          ],
        ),
      ),
    );
  }
}
