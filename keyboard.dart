import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:f_calculator/button.dart';
import 'package:f_calculator/blocs/calculator.dart';
import 'package:f_calculator/data/datasource.dart';

class Keyboard extends StatelessWidget {
  final keys = [
    ["1", "2", "3", "+"],
    ["0", ".", "="]
  ];

  final Calculator calculator;
  Keyboard({this.calculator});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Button(
                text: "1",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "2",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "3",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "4",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "5",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "6",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "7",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "8",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "9",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "0",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: ".",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "+",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "-",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "*",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "/",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onReceiveSymbol(symbol),
              ),
              Button(
                text: "=",
                width: calculateButtonWidth(context),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onEquals(),
              ),
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "C",
                width: calculateButtonWidth(context,isDouble: true),
                height: calculateButtonHeigth(context),
                color: Colors.orange,
                onPressed: (symbol) => calculator.onClear(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double calculateButtonWidth(context, {isDouble = false}) {
    double width = MediaQuery.of(context).size.width / 4;
    return isDouble ? (width * 2) : width;
  }

  double calculateButtonHeigth(context, {isDouble = false}) {
    return MediaQuery.of(context).size.height / 8;
  }
}