import 'package:flutter/material.dart';

class First_screen extends StatefulWidget {

  final Todo todo;

  First_screen({Key key, @required this.todo}) :super(key: key);

  @override
  _First_screenState createState() => _First_screenState(this.todo);
}

class _First_screenState extends State<First_screen> {

  final Todo todo;
  _First_screenState(this.todo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("路由"),
      ),
      body: new Container(
        child: new Center(
          child: new FlatButton(
            child: Text("Go back - ${this.todo.description}"),
            onPressed: () {
              Navigator.pop(context, "Nope! - callback");
            },
          ),
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;
  Todo(this.title, this.description);
}