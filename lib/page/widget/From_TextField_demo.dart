/*
 * @Author: ZY 
 * @Date: 2020-06-11 15:10:30 
 * @Last Modified by: ZY
 * @Last Modified time: 2020-06-11 17:32:46
 */
import 'package:flutter/material.dart';

class FromTextFieldWidget extends StatefulWidget {
  @override
  _FromTextFieldWidgetState createState() => _FromTextFieldWidgetState();
}

class _FromTextFieldWidgetState extends State<FromTextFieldWidget> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Form(
          key: _formKey,
          // autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _usernameController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "邮箱或者手机号",
                    icon: Icon(Icons.person)),
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                autofocus: false,
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    icon: Icon(Icons.lock)),
                validator: (v) {
                  return v.trim().length > 6 ? null : "密码不少于6位";
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          //在这里不能通过此方式获取FormState，context不对
                          //print(Form.of(context));

                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
