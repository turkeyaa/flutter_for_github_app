import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class FansPage extends StatefulWidget {

  static final String sName = "fans";

  @override
  _FansPageState createState() => _FansPageState();
}

class _FansPageState extends State<FansPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('粉丝')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}