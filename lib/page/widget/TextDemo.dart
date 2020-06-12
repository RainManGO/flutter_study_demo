
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          "data"*100,
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor:1.5,
        ),
        padding: EdgeInsets.all(10),
        color: Colors.yellow,
        decoration: BoxDecoration(
          
        ),
    );
  }
}