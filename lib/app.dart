import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/today.dart';
import 'package:flutter_for_github_app/setting.dart';
import 'package:flutter_for_github_app/layout.dart';
import 'package:flutter_for_github_app/mine.dart';


//果核的主界面
class Guohe extends StatefulWidget {
  @override
  GuoheState createState() => new GuoheState();
}

class GuoheState extends State<Guohe> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Mine(),
            new Setting(),
            new Layout(),
            new Today(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.white,
          child: new TabBar(
            controller: controller,
            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.black26,
            tabs: <Widget>[
              new Tab(
                text: "首页",
                icon: new Icon(Icons.map),
              ),
              new Tab(
                text: "设置",
                icon: new Icon(Icons.map),
              ),
              new Tab(
                text: "布局",
                icon: new Icon(Icons.directions_run),
              ),
              new Tab(
                text: "今日",
                icon: new Icon(Icons.brightness_5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}