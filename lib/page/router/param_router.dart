/*
 * @Author: ZY 
 * @Date: 2020-04-24 15:54:18 
 * @Last Modified by: ZY
 * @Last Modified time: 2020-04-24 17:13:44
 */

import 'package:flutter/material.dart';

class ParamRouter extends StatelessWidget {
  ParamRouter({Key key, this.paramString}) : super(key: key);
  final String paramString;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由传值"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(paramString),
              RaisedButton(
                onPressed: () => Navigator.pop(context,"这是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
