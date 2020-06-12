/*
 * @Author: ZY 
 * @Date: 2020-04-24 13:40:01 
 * @Last Modified by: ZY
 * @Last Modified time: 2020-04-25 10:21:04
 */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class NewRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(ModalRoute.of(context).settings.arguments ??  "新路由",style: TextStyle(color: Colors.red),),
    );
  }
}
