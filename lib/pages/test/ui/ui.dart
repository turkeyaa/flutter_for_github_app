import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:transparent_image/transparent_image.dart';

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
      body: new Container(
        child: new Column(
          children: <Widget>[
            _getToggleChild(),

            /// 1. text
            new Row(
              children: <Widget>[
                new Text("Hello world!"),
                new Text("Hello turkeyaa"),
              ],
            ),

            /// 2. button
            new Row(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.mail),
                  tooltip: 'mail',
                  onPressed: () {
                    print("icon button");
                  },
                ),
                new FlatButton(
                  child: Text("flat button"),
                  onPressed: () {
                    print("flat button");
                  },
                ),
                RaisedButton(
                  child: Text("raise button"),
                  onPressed: () {
                    print("raise button");
                  },
                ),
                OutlineButton(
                  child: Text("ontline button"),
                  onPressed: () {
                    print("outline button");
                  },
                ),
              ],
            ),

            /// 3. image
            new Image.asset(
              'images/flowers.jpg',
              height: 200.0,
              fit: BoxFit.cover,
            ),

            new Image.network(
              'https://github.com/turkeyaa/TemplateSwiftAPP/blob/master/Resource/API.png',
              height: 100.0,
              fit: BoxFit.cover,
            ),

            // new FadeInImage.memoryNetwork(
            //   placeholder: kTransparentImage,
            //   height: 100.0,
            //   fit: BoxFit.cover,
            //   image:
            //       'https://github.com/turkeyaa/TemplateSwiftAPP/blob/master/Resource/API.png',
            // ),

            /// 4. icon
            // new AppBar(
            //   title: Text("app bar"),
            // ),

            /// 4. todo

            /// 处理手势
            new GestureDetector(
              onTap: () {
                print("My button was tapped!");
              },
              child: new Container(
                height: 44.0,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.lightGreen[500],
                ),
                child: new Center(
                  child: new Text("Engage - 手势 - 点击事件"),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                final snackBar = new SnackBar(content: new Text("Tap"),);
                print("custom my button!");
                Scaffold.of(context).showSnackBar(snackBar);
                
              },
              child: new Container(
                padding: new EdgeInsets.all(12.0),
                decoration: new BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                child: new Text("Custom my buttom!"),
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update text',
        child: Icon(Icons.update),
      ),
    );
  }
}
