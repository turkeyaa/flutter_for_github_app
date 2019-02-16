import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_for_github_app/pages/test/file.dart';
import 'package:flutter_for_github_app/pages/test/network.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_list.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_layout.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_card.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_form.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_grid.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_list2.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_listTile.dart';
import 'package:flutter_for_github_app/pages/test/ui/ui_stack.dart';

class Today extends StatefulWidget {
  @override
  TodayState createState() => new TodayState();
}

class TodayState extends State<Today> {
  
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("今天"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Column(
          children: <Widget>[
            Text("data"),
            FlatButton(
              child: Text("文件"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FileOperationRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("界面"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui();
                }));
              },
            ),
            RaisedButton(
              child: Text("界面-form"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_form();
                }));
              },
            ),
            RaisedButton(
              child: Text("列表"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_list();
                }));
              },
            ),
            OutlineButton(
              child: Text("界面-布局"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_layout();
                }));
              },
            ),
            OutlineButton(
              child: Text("界面-card"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_card();
                }));
              },
            ),
            OutlineButton(
              child: Text("界面-grid"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_grid();
                }));
              },
            ),
            OutlineButton(
              child: Text("界面-list2"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_list2();
                }));
              },
            ),
            OutlineButton(
              child: Text("界面-listTile"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_listTile();
                }));
              },
            ),
            OutlineButton(
              child: Text("界面-stack"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui_stack();
                }));
              },
            ),

            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Ui();
                }));
              },
            ),
            FlatButton(
              child: Text("网络请求"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Network();
                }));
              },
            ),
          ],
        )),
      ),
    );
  }

  ///模拟等待两秒，返回OK
  request() async {
    await Future.delayed(Duration(seconds: 1));
    return "ok";
  }

  ///得到"ok!"后，将"ok!"修改为"ok from request"
  doSomeThing() async {
    String data = await request();
    data = "ok from request";
    print(data);
    return data;
  }
}
