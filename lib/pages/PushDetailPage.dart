import 'package:flutter/material.dart';

class PushDetailPage extends StatefulWidget {

  final String userName;
  final String reposName;
  final String sha;
  final bool needHomeIcon;

  PushDetailPage(this.sha, this.userName, this.reposName, {this.needHomeIcon = false});

  @override
  _PushDetailPageState createState() => _PushDetailPageState();
}

class _PushDetailPageState extends State<PushDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('推送详情')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}