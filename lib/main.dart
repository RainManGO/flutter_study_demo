import 'package:flutter/material.dart';
import 'package:flutter_study_demo/page/router/new_router.dart';
import 'package:flutter_study_demo/page/router/param_router.dart';
import 'package:flutter_study_demo/page/widget/page_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resultPopString = "返回接受参数返回label";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第一个Flutter应用")),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text("路由"),
            children: _generateItem(context, [
              PageInfo("跳转到新路由", (ctx) => NewRouter()),
            ]),
          ),
          ListTile(
            title: Text("跳转传参"),
            subtitle: Text(resultPopString),
            trailing: Icon(Icons.arrow_right),
            onTap: () async {
              var result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return ParamRouter(
                  paramString: "这是传过去的值",
                );
              }));
              print("$result");
              setState(() {
                resultPopString = result;
              });
            },
          ),
        ],
      ),
    );
  }
}

class PageInfo {
  PageInfo(this.title, this.builder,
      {this.withSccaffold = true, this.padding = true});
  String title;
  WidgetBuilder builder;
  bool withSccaffold;
  bool padding;
}

List<Widget> _generateItem(BuildContext context, List<PageInfo> childen) {
  return childen.map<Widget>((page) {
    return ListTile(
      title: Text(page.title),
      trailing: Icon(Icons.arrow_right),
      onTap: () => _openPage(context, page),
    );
  }).toList();
}

void _openPage(BuildContext context, PageInfo page) {
  if (page.withSccaffold) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PageScaffold(
        title: page.title,
        body: page.builder(context),
        padding: page.padding,
      );
    }));
  } else {
    Navigator.push(context, MaterialPageRoute(builder: page.builder));
  }
}
