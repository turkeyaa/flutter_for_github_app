import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';
import 'package:flutter_for_github_app/api/repositories/ListUserRepositoryApi.dart';
import 'package:flutter_for_github_app/model/Repository.dart';

class Mine extends StatefulWidget {
  @override
  MineState createState() => MineState();
}

class MineState extends State<Mine> {
  Dio dio = new Dio();
  List _repos;

  @override
  void initState() {
    super.initState();
    _reposList();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("首页"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Column(
          /* 布局
           * 1. 头部：背景、用户头像
           * 2. 功能导航区：概况、仓库、工程、点赞、跟随、跟随者
           * 3. 功能导航区详情
           */
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                NavigatorUtils.goPerson(context, "turkeyaa");
              },
              child: new Container(
                padding: new EdgeInsets.all(20.0),
                decoration: new BoxDecoration(
                  // color: Theme.of(context).buttonColor,
                  color: Colors.blueGrey,
                ),
                child: Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        // 1. 头部
                        new CircleAvatar(
                          backgroundImage: new AssetImage("images/flowers.jpg"),
                          radius: 60.0,
                        ),
                        new Text("turkeyaa"),
                        new FlatButton(
                          child: new Text("退出"),
                          onPressed: () {
                            NavigatorUtils.goLogin(context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // 2. 功能导航区
            new Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlineButton(
                  child: Text("仓库：2"),
                  onPressed: () {
                    NavigatorUtils.goReleasePage(context, "turkeyaa",
                        "flutter_for_github_app", "releaseUrl", "tagUrl");
                  },
                ),
                OutlineButton(
                  child: Text("粉丝：100"),
                  onPressed: () {
                    NavigatorUtils.goFans(context);
                  },
                ),
                OutlineButton(
                  child: Text("关注：10"),
                  onPressed: () {
                    NavigatorUtils.goFollow(context);
                  },
                ),
                OutlineButton(
                  child: Text("星标：1000"),
                  onPressed: () {
                    NavigatorUtils.goStars(context);
                  },
                ),
              ],
            ),

            // 3. 功能导航区详情
            new Text("个人动态"),
            new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                const Text('I\'m dedicating every day to you'),
                const Text('Domestic life was never quite my style'),
                const Text('When you smile, you knock me out, I fall apart'),
                const Text('And I thought I was so smart'),
              ],
            ),
            // new ListView.builder(
            //   padding: const EdgeInsets.all(16.0),
            //   itemCount: _repos == null ? 0:_repos.length,
            //   itemBuilder: (context, i) {
            //     return _newRow(_repos[i]);
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Widget _newRow(item) {
    // return new Card(
    //   child: Text("data"),
    // );
  }

  _reposList() async {
    // ListUserRepositoryApi api = ListUserRepositoryApi();
    // await api.call();
    // for (Repository model in api.model_list) {
    //   print(model.name);
    // }
  }
}
