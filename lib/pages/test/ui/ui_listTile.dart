import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

class Ui_listTile extends StatefulWidget {
  @override
  _Ui_listTileState createState() => _Ui_listTileState();
}

class _Ui_listTileState extends State<Ui_listTile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("listTile"),
        backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
        centerTitle: true, //设置标题是否局中
      ),
      body: new Center(
        child: new Text("listTile"),
      ),
    );
  }
}
