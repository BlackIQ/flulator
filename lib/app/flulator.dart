import 'package:flulator/app/widgets/buttons/buttons.dart';
import 'package:flulator/app/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class Flulator extends StatefulWidget {
  @override
  FlulatorState createState() => FlulatorState();
}

class FlulatorState extends State<Flulator> {

  String _history = 'Welcome!';
  String _expression = 'Hi, Press AC to start app.';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void deLast(String text) {
    setState(() {
      List<String> c = _expression.split("");
      c.removeLast();
      _expression = c.join();
    });
  }

  void clear(String text) {
    setState(() {
      if (text == 'AC') {
        _expression = '';
        _history = '';
      }
      else if (text == 'C') {
        _expression = '';
      }
    });
  }

  void evaluation(String text) {

    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: FluDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Flutter',
          style: GoogleFonts.boogaloo(),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              _expression,
              style: GoogleFonts.boogaloo(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              _history,
              style: GoogleFonts.boogaloo(
                fontSize: 50,
                color: Colors.teal,
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: '-',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: clear,
              ),
              FluButton(
                text: '+',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: clear,
              ),
              FluButton(
                text: '(',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: deLast,
              ),
              FluButton(
                text: ')',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: 'AC',
                fillColor: Colors.grey,
                textColor: Colors.white,
                callback: clear,
              ),
              FluButton(
                text: 'C',
                fillColor: Colors.grey,
                textColor: Colors.white,
                callback: clear,
              ),
              FluButton(
                text: '<',
                fillColor: Colors.grey,
                textColor: Colors.white,
                callback: deLast,
              ),
              FluButton(
                text: '/',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
                callback: numClick,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: '7',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '8',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '9',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '*',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
                callback: numClick,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: '4',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '5',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '6',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '-',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
                callback: numClick,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: '1',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '2',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '3',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '+',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
                callback: numClick,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: '.',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '0',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '00',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              FluButton(
                text: '=',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
                callback: evaluation,
              )
            ],
          ),
        ],
      ),
    );
  }
}
