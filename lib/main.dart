import 'package:flutter/material.dart';
import 'app/flulator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Flulator(),
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.teal,
      ),
    );
  }
}
