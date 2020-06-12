import 'package:flutter/material.dart';

class MyStateWidget extends StatefulWidget {
  @override
  _MyStateWidgetState createState() => _MyStateWidgetState();
}

class _MyStateWidgetState extends State<MyStateWidget> {

  _MyStateWidgetState({this.s});
  final String s;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data"),
    );
  }
}