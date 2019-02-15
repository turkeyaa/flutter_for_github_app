import 'package:flutter/material.dart';

class Ui_grid extends StatefulWidget {
  @override
  
  _Ui_gridState createState() => _Ui_gridState();
}

class _Ui_gridState extends State<Ui_grid> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('界面-gridview')),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }

  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(count, (int index) => 
      new Container(child: new Image.asset('images/flowers${index+1}.jpg')),
    );
  }

  Widget buildGrid() {
    return new GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(13),
    );
  }
}