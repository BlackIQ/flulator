import 'package:calculator/app/buttons/numbers.dart';
import 'package:calculator/app/buttons/operators.dart';
import 'package:calculator/app/buttons/status.dart';
import 'package:calculator/app/texts/all.dart';
import 'package:calculator/app/texts/current.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/link.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'dart:async';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flulator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _build(),
    );
  }

  Widget _build() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          CurrentStatus(number: '250+250'),
          AllStatus(number: '500'),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumericButtons(number: '7'),
              NumericButtons(number: '8'),
              NumericButtons(number: '9'),
              OperatorButton(operator: '/')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumericButtons(number: '4'),
              NumericButtons(number: '5'),
              NumericButtons(number: '6'),
              OperatorButton(operator: '*')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumericButtons(number: '1'),
              NumericButtons(number: '2'),
              NumericButtons(number: '3'),
              OperatorButton(operator: '-')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumericButtons(number: '.'),
              NumericButtons(number: '0'),
              OperatorButton(operator: '='),
              OperatorButton(operator: '+')
            ],
          ),
        ],
      ),
    );
  }
}
