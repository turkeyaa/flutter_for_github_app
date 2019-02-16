import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_for_github_app/model/Topic.dart';

class Network extends StatefulWidget {
  @override
  _NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<Network> {

  Dio dio = new Dio();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('网络请求')),
      body: new Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("分类列表"),
              onPressed: () {
                try {
                  _categoryList();
                } catch (e) {
                  print(e);
                } finally {
                  print("finally");
                }
              },
            ),
            FlatButton(
              child: Text("登录"),
              onPressed: () {
                _login();
              },
            ),
            FlatButton(
              child: Text("主题详情"),
              onPressed: () {
                _topicInfo();
              },
            ),
          ],
        ),
      ),
    );
  }

  _categoryList() async {
    Response response = await dio.get("http://localhost:8181/category/list");
    print(response.data);
  }

  _topicInfo() async {
    Response response = await dio.get("http://localhost:8181/topic/info?topicID=E54BF9F4-F187-450D-91B9-E9E14DD806E9");
    // print(response.data);
    Topic topic = new Topic.fromJson(response.data["data"]);
    print("标题：" + topic.title);
    print("内容：" + topic.content);
    print("作者：" + topic.author);
  }

  _login() async {
    Response response = await dio.post("http://localhost:8181/auth/login", data: {"account":"18668089860","password":"123456"});
    print(response.data);

  }

  _fileUpload() async {
    print("todo - 暂未完成");
  }
}