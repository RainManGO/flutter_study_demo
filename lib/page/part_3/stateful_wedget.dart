import 'package:flutter/material.dart';

class SonGetStatePage extends StatefulWidget {
  @override
  _SonGetStatePageState createState() => _SonGetStatePageState();
}

class _SonGetStatePageState extends State<SonGetStatePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
          onPressed: () {
            ScaffoldState _state =
                context.findAncestorStateOfType<ScaffoldState>();
            _state.showSnackBar(SnackBar(content: Text("我是Snackbar")));            
          },
          child: Text("显示Snackbar"),
        )
    );
  }
}
