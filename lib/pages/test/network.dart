import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:flutter_for_github_app/model/Topic.dart';
import 'package:flutter_for_github_app/model/Category.dart';
import 'package:flutter_for_github_app/model/Repository.dart';

import 'package:flutter_for_github_app/api/RestApi.dart';
import 'package:flutter_for_github_app/api/auth/LoginApi.dart';
import 'package:flutter_for_github_app/api/repositories/ListUserRepositoryApi.dart';
import 'package:flutter_for_github_app/api/user/UserInfoApi.dart';
import 'package:flutter_for_github_app/api/repositories/UserRepositoryDetailApi.dart';


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
              child: Text("仓库列表"),
              onPressed: () {
                _reposList();
              },
            ),
            FlatButton(
              child: Text("登录"),
              onPressed: () {
                _login();
              },
            ),
            FlatButton(
              child: Text("---api unit test---"),
              onPressed: () {
                _apiUnitTest();
              },
            ),
          ],
        ),
      ),
    );
  }

  _reposList() async {
    ListUserRepositoryApi api = ListUserRepositoryApi(username: "turkeyaa");
    await api.call();
    for (Repository model in api.model_list) {
      print(model.name);
    }
  }

  _login() async {
    LoginApi api = LoginApi(account: "turkeyaa", password: "aa660419");
    await api.call();
    print(api.token);
  }

  _apiUnitTest() async {
    UserInfoApi userInfoApi =UserInfoApi(username: "turkeyaa");
    await userInfoApi.call();
    print(userInfoApi.user.login);

    UserRepositoryDetailApi reposDetailApi =UserRepositoryDetailApi(username: "turkeyaa", reposname: "flutter_for_github_app");
    await reposDetailApi.call();
    print(reposDetailApi.model.fullName);
  }
}