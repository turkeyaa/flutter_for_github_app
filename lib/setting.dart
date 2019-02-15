import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => new SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("设置"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text("设置"),
        ),
      ),
    );
  }
}