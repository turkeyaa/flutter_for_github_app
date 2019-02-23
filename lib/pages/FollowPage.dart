import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class FollowPage extends StatefulWidget {

  static final String sName = "follow";

  @override
  _FollowPageState createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('关注')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}