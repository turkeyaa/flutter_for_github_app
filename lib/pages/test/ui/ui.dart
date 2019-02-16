import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Ui extends StatefulWidget {
  @override
  
  _UiState createState() => _UiState();
}

class _UiState extends State<Ui> {

  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text("Toggle one");
    } else {
      return CupertinoButton(
        onPressed: () {},
        child: Text("Toggle two"),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('界面')),
      body: new Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update text',
        child: Icon(Icons.update),
      ),
    );
  }
}