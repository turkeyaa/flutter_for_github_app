import 'package:flutter/material.dart';

class CommonListPage extends StatefulWidget {

  final String userName;
  final String reposName;
  final String showType;
  final String dataType;
  final String title;

  CommonListPage(this.title, this.showType, this.dataType, {this.userName, this.reposName});

  @override
  _CommonListPageState createState() => _CommonListPageState();
}

class _CommonListPageState extends State<CommonListPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('评论列表')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}