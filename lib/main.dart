import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/flulator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flulator(),
      theme: ThemeData(
        textTheme: GoogleFonts.boogalooTextTheme(),
        backgroundColor: Colors.white,
        primarySwatch: Colors.teal,
      ),
    );
  }
}
