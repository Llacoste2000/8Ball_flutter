import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Center(
              child: Text('Ask me anything'),
            ),
          ),
          backgroundColor: Colors.blue[600],
          body: AnswerBot(),
        ),
      ),
    );

class AnswerBot extends StatefulWidget {
  @override
  _AnswerBotState createState() => _AnswerBotState();
}

class _AnswerBotState extends State<AnswerBot> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
