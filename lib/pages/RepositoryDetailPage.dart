import 'package:flutter/material.dart';

class RepositoryDetailPage extends StatefulWidget {

  final String userName;
  final String reposName;

  RepositoryDetailPage(this.userName, this.reposName);

  @override
  _RepositoryDetailPageState createState() => _RepositoryDetailPageState();
}

class _RepositoryDetailPageState extends State<RepositoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('仓库详情')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}