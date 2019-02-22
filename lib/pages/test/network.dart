import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:flutter_for_github_app/model/Topic.dart';
import 'package:flutter_for_github_app/model/Category.dart';
import 'package:flutter_for_github_app/api/RestApi.dart';

import 'package:flutter_for_github_app/pages/test/LoginApi.dart';
import 'package:flutter_for_github_app/pages/test/CategoryApi.dart';

import 'package:flutter_for_github_app/api/repositories/ListUserRepositoryApi.dart';
import 'package:flutter_for_github_app/model/Repository.dart';


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

    ListUserRepositoryApi api = ListUserRepositoryApi();
    await api.call();
    for (Repository model in api.model_list) {
      print(model.name);
    }

    // CategoryApi api = CategoryApi();
    // await api.call();
    // for (Category item in api.model_list) {
    //   print(item.name);
    // }
    // Response response = await RestApi(url: "http://localhost:8181/category/list", httpMethods: HttpMethods.HttpMethods_Get).call();
    // Response response = await CategoryApi().call();
    // print(response.data);
    // // String encodedString = JSON.encode([1, 2, { 'a': null }]);
    
    // Map categoryMap =response.data["data"][0];
    // print(categoryMap);
    // var category = new Category.fromJson(categoryMap);
    // var categoryMap2 = category.toJson();
    // print(category.name);
    // print(category.createTime);
    // print(categoryMap2);

    // List<Category> categoryList = Category.listFromJson(response.data["data"]);
    // print(categoryList);
    // for (Category item in categoryList) {
    //   print(item.name);
    // }
  }

  _topicInfo() async {
    Response response = await dio.get("http://localhost:8181/topic/info?topicID=E54BF9F4-F187-450D-91B9-E9E14DD806E9");
    print(response.data);
    // Topic topic = new Topic.fromJson(response.data["data"]);

    // print("标题：" + topic.title);
    // print("作者：" + topic.author);
  }

  _login() async {
    Response response = await dio.post("http://localhost:8181/auth/login", data: {"account":"18668089860","password":"123456"});
    print(response.data);
    // Response response =await RestApi(url: "http://localhost:8181/auth/login", httpMethods: HttpMethods.HttpMethods_Post).call();
    // Response response = await LoginApi(account: "18668089860", password: "123456").call();
    // LoginApi api = LoginApi(account: "18668089860", password: "123456");
    // await api.call();
    // print(api.token);
  }

  _fileUpload() async {
    print("todo - 暂未完成");
  }
}