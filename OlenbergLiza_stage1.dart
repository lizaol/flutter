import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getRow("What's your name?", "(text field)"),
            getRow("What's your age?", "(slider)"),
            getRow("What's your marital status?", "(radio group)"),
            getRow("What's your family background?", "(drop-down)"),
            getRow("What is the current health status?", "(slider)"),
            getResult(),
          ],
        ),
      ),
    );
  }
}

getRow(text, text1) {
  return Column(
    children: <Widget>[
      Row(children: [
        Container(
          padding: EdgeInsets.all(12),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              child: Text(
                text1,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
            ),
          ]),
    ],
  );
}

getResult() {
  return Text(
    "Based on your results, we conclude....",
    style: TextStyle(
      fontSize: 30,
      color: Colors.red,
    ),
  );
}
