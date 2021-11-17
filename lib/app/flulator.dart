import 'package:calculator/app/buttons/numbers.dart';
import 'package:calculator/app/buttons/operators.dart';
import 'package:calculator/app/buttons/status.dart';
import 'package:calculator/app/drawer/drawer.dart';
import 'package:calculator/app/texts/all.dart';
import 'package:calculator/app/texts/current.dart';
import 'package:flutter/material.dart';

import 'buttons/exit.dart';

class Flulator extends StatefulWidget {
  _FlulatorState createState() => _FlulatorState();
}

class _FlulatorState extends State<Flulator> {

  String current = '250+250';
  int all = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FluDrawer(),
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
          CurrentStatus(number: current),
          AllStatus(number: all),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExitButton(),
              StatusButons(option: 'Del'),
              StatusButons(option: 'C'),
              OperatorButton(operator: '%'),
            ],
          ),
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