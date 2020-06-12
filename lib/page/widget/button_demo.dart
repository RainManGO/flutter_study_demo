import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonDemoPage extends StatefulWidget {
  @override
  _ButtonDemoPageState createState() => _ButtonDemoPageState();
}

class _ButtonDemoPageState extends State<ButtonDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        ClipRRect(
          child: RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () => print("RaisedButton"),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () => print("OutlineButton"),
          shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0))),
        ),
        FlatButton(
            onPressed: () => print("FlatButton"), child: Text("FlatButton")),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.attach_file),
            label: Text("RaisedButton")),
        OutlineButton.icon(
            onPressed: () {},
            icon: Icon(Icons.attach_file),
            label: Text("RaisedButton")),
        FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.attach_file),
            label: Text("RaisedButton")),
      ],
    ));
  }
}
