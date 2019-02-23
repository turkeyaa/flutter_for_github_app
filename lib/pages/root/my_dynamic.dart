import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class My_dynamic extends StatefulWidget {
  @override
  _My_dynamicState createState() => _My_dynamicState();
}

class _My_dynamicState extends State<My_dynamic> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("动态"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Column(
          children: <Widget>[
            new Text("动态"),
          ],
        ),
      ),
    );
  }
}
