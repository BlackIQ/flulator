import 'package:flulator/app/widgets/buttons/pro_buttons.dart';
import 'package:flulator/app/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class ProCalculator extends StatefulWidget {
  @override
  ProCalculatorState createState() => ProCalculatorState();
}

class ProCalculatorState extends State<ProCalculator> {
  String _history = 'Welcome to Pro!';
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
      } else if (text == 'C') {
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
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Normal Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
        title: Text(
          'Pro Flulator',
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
                fontSize: 20,
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
                fontSize: 40,
                color: Colors.teal,
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProButton(
                text: 'sin',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              ),
              ProButton(
                text: 'cos',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              ),
              ProButton(
                text: 'cot',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              ),
              ProButton(
                text: 'tan',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProButton(
                text: '-',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              ),
              ProButton(
                text: '+',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              ),
              ProButton(
                text: '(',
                fillColor: Colors.blueGrey[300],
                textColor: Colors.white,
                callback: numClick,
              ),
              ProButton(
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
              ProButton(
                text: 'AC',
                fillColor: Colors.grey,
                textColor: Colors.white,
                callback: clear,
              ),
              ProButton(
                text: 'C',
                fillColor: Colors.grey,
                textColor: Colors.white,
                callback: clear,
              ),
              ProButton(
                text: '<',
                fillColor: Colors.grey,
                textColor: Colors.white,
                callback: deLast,
              ),
              ProButton(
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
              ProButton(
                text: '7',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '8',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '9',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
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
              ProButton(
                text: '4',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '5',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '6',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
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
              ProButton(
                text: '1',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '2',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '3',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
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
              ProButton(
                text: '.',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '0',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
                text: '00',
                fillColor: Colors.white,
                textColor: Colors.teal,
                callback: numClick,
              ),
              ProButton(
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
