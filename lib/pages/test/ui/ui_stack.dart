import 'package:flutter/material.dart';

class Ui_stack extends StatefulWidget {
  @override
  
  _Ui_stackState createState() => _Ui_stackState();
}

class _Ui_stackState extends State<Ui_stack> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('界面-stack')),
      body: new Center(
        child: Stack(
          alignment: const Alignment(0.6, 0.6),
          children: <Widget>[
            new CircleAvatar(
              backgroundImage: new AssetImage("images/flowers.jpg"),
              radius: 100.0,
            ),
            new Container(
              decoration: new BoxDecoration(
                color: Colors.black45,
              ),
              child: new Text(
                'Mia B',
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}