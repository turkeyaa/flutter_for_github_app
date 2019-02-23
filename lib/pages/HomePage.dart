import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static final String sName = "home";

  @override
  _HomePageState createState() => _HomePageState();



}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('首页')),
      body: new Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}