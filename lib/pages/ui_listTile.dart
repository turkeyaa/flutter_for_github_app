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

  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('界面-listTile')),
      body: new Center(
        child: Column(
          children: <Widget>[
            Text("todo - 暂未完成"),
            Container(
              child: FadeTransition(
                opacity: curve,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}