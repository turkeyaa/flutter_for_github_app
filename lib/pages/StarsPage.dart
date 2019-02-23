import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class StarsPage extends StatefulWidget {

  static final String sName = "stars";

  @override
  _StarsPageState createState() => _StarsPageState();
}

class _StarsPageState extends State<StarsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('星标')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}