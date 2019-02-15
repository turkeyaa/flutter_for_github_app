import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  MineState createState() => MineState();
}

class MineState extends State<Mine> {
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
            // 1. 头部
            new CircleAvatar(
              backgroundImage: new AssetImage("images/flowers.jpg"),
              radius: 80.0,
            ),
            new Text("turkeyaa"),
            // 2. 功能导航区
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlineButton(
                  child: Text("Overview"),
                  onPressed: () {},
                ),
                OutlineButton(
                  child: Text("Repositories"),
                  onPressed: () {},
                ),
                OutlineButton(
                  child: Text("Stars"),
                  onPressed: () {},
                ),
                OutlineButton(
                  child: Text("Followers"),
                  onPressed: () {},
                ),
              ],
            ),
            // 3. 功能导航区详情
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
          ],
        ),
      ),
    );
  }
}
