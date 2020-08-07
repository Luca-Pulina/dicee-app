import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 2;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 5;
    rightDiceNumber = 1;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              print('Left Button got pressed');
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              print('Right Button got pressed');
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}
