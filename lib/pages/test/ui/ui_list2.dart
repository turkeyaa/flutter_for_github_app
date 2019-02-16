import 'package:flutter/material.dart';

class Ui_list2 extends StatefulWidget {
  @override
  _Ui_list2State createState() => _Ui_list2State();
}

class _Ui_list2State extends State<Ui_list2> {
  List<Widget> list = <Widget>[
    new ListTile(
      title: new Text('CineArts at the Empire',
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: new Text('85 W Portal Ave'),
      leading: new Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: new Text('The Castro Theater',
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: new Text('429 Castro St'),
      leading: new Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      leading: new Icon(Icons.map),
      title: new Text('Map'),
    ),
    new ListTile(
      leading: new Icon(Icons.photo),
      title: new Text('Album'),
    ),
    new ListTile(
      leading: new Icon(Icons.phone),
      title: new Text('Phone'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('界面-listview')),
      body: new Center(
          child: new ListView(
        children: list,
      )),
    );
  }
}
