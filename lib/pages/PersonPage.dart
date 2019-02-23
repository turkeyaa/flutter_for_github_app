import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {

  static final String sName = "person";

  final String userName;

  PersonPage(this.userName, {Key key}) :super(key:key);

  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('个人信息')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}