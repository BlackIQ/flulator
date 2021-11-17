import 'package:calculator/app/buttons/buttons.dart';
import 'package:calculator/app/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flulator extends StatefulWidget {
  @override
  FlulatorState createState() => FlulatorState();
}

class FlulatorState extends State<Flulator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: FluDrawer(),
      appBar: AppBar(
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
              '123*123',
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
              '123',
              style: GoogleFonts.boogaloo(
                fontSize: 50,
                color: Colors.teal,
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FluButton(
                text: 'AC',
                fillColor: Colors.grey,
                textColor: Colors.white,
              ),
              FluButton(
                text: 'C',
                fillColor: Colors.grey,
                textColor: Colors.white,
              ),
              FluButton(
                text: '%',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
              ),
              FluButton(
                text: '/',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
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
              ),
              FluButton(
                text: '8',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '9',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '*',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
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
              ),
              FluButton(
                text: '5',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '6',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '-',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
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
              ),
              FluButton(
                text: '2',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '3',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '+',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
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
              ),
              FluButton(
                text: '0',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '00',
                fillColor: Colors.white,
                textColor: Colors.teal,
              ),
              FluButton(
                text: '=',
                fillColor: Colors.blueGrey,
                textColor: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
