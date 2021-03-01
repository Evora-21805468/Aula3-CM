import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final double width, height;
  final Function onPressed;
  final String text;
  final Color color;

  Button({
    Key key,
    this.text,
    this.width,
    this.height,
    this.color = Colors.black54,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(2.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: color,
        onPressed: () => onPressed(text),
        child: Text(
          text,
        ),
      ),
    );
  }
}