import 'package:flutter/material.dart';
import 'app/calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
