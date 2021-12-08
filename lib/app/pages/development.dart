import 'package:flulator/app/widgets/buttons/wide_button.dart';
import 'package:flulator/app/widgets/text/heading.dart';
import 'package:flulator/app/widgets/text/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Development extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'About development',
          style: GoogleFonts.boogaloo(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Heading(text: 'Development'),
            SizedBox(height: 10),
            ParagraphText(
              text:
                  'As you know, Flulator is a free open source calculator powered by Flutter. Due to all the code is available in Github',
            ),
            SizedBox(height: 15),
            Heading(text: 'Contribute'),
            SizedBox(height: 10),
            ParagraphText(
              text:
                'You can contribute in Flulator. If you have knowledge about Flutter or you are a UI creator and see app has issues, you cam contact us and we will work on it. Best way is opening an issue in Github.',
            ),
            SizedBox(height: 15),
            WideButton(
              onTap: () async {
                await launch("https://github.com/BlackIQ/flulator");
              },
              text: 'Source on Github',
              icon: FontAwesomeIcons.github,
            ),
            SizedBox(height: 5),
            WideButton(
              onTap: () async {
                await launch("https://flulator.blackiq.ir");
              },
              text: 'Flulator main page',
              icon: FontAwesomeIcons.desktop,
            ),
            Divider(color: Colors.teal),
            Heading(text: 'Developer'),
            SizedBox(height: 10),
            ParagraphText(
              text:
                'Hi, I am Amirhossein Mohammadi. Mobile and web developer. You can contact me from web page or sending emails.',
            ),
            SizedBox(height: 15),
            WideButton(
              onTap: () async {
                await launch("https://amirhossein.info");
              },
              text: 'amirhossein.info',
              icon: FontAwesomeIcons.globe,
            ),
            SizedBox(height: 5),
            WideButton(
              onTap: () async {
                await launch("mailto:amirhosseinmohammadi1380@yahoo.com");
              },
              text: 'amirhosseinmohammadi1380@yahoo.com',
              icon: FontAwesomeIcons.solidEnvelope,
            ),
            SizedBox(height: 5),
            WideButton(
              onTap: () async {
                await launch("tel:+989014784362");
              },
              text: '+98 901 478 4362',
              icon: FontAwesomeIcons.phone,
            ),
          ],
        ),
      ),
    );
  }
}
