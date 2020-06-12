/*
 * @Author: ZY 
 * @Date: 2020-06-11 15:09:00 
 * @Last Modified by:   ZY 
 * @Last Modified time: 2020-06-11 15:09:00 
 */

import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _switchSelect = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Switch(
              value: _switchSelect,
              onChanged: (value) {
                setState(() {
                  _switchSelect = value;
                });
              }),
          Checkbox(
            value: _switchSelect,
            onChanged: (value) {
              setState(() {
                _switchSelect = value;
              });
            },
          )
        ],
      ),
    );
  }
}
