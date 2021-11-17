import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FluButton extends StatelessWidget {
  FluButton({@required this.text, @required this.textColor, @required this.fillColor});
  final text;
  final textColor;
  final fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: fillColor,
          child: Text(
            text,
            style: GoogleFonts.boogaloo(
              color: textColor,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          onPressed: () {},
        ),
        width: 65,
        height: 65,
      ),
    );
  }
}
