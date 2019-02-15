import 'package:flutter/material.dart';

class About_flutter extends StatefulWidget {
  @override
  _About_flutterState createState() => _About_flutterState();
}

class _About_flutterState extends State<About_flutter> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('界面-about flutter')),
      body: new Center(
        child: Column(
          children: <Widget>[
            Text("todo - 暂未完成"),
          ],
        ),
      ),
    );
  }
}
