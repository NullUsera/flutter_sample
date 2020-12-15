import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'Flutter',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.deepPurpleAccent,
          ),
          children: [
            TextSpan(
                text: '.cn',
                style: TextStyle(fontSize: 16.0, color: Colors.deepPurple))
          ]),
    );
  }
}
