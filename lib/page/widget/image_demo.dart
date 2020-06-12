/* 
 * @Author: ZY 
 * @Date: 2020-04-28 11:37:18 
 * @Last Modified by: ZY
 * @Last Modified time: 2020-04-28 16:34:45
 */

import 'dart:io';
import 'dart:ui';
import 'package:flutter/widgets.dart';

class ImageDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
         child: Column(
           children: <Widget>[
             ClipRRect(
               child: Image(image: AssetImage("images/test1.png")),
             ),
             Container(
               margin: EdgeInsetsDirectional.only(top: 10),
               child: Image.network("https://pics2.baidu.com/feed/a8ec8a13632762d0e45239887d599cfc503dc6d1.jpeg?token=349134e9aea00cd6d659cb4fd338d6ad"),
             ),
           ],
         ),
    );
  }
}

