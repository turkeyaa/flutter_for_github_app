import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Ui_list_long extends StatefulWidget {
  @override
  _Ui_list_longState createState() => _Ui_list_longState();
}

class _Ui_list_longState extends State<Ui_list_long> {
  final items = new List<String>.generate(80, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("长列表"),
      ),
      body: new Container(
        child: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return new ListTile(
              title: new Text("${item}"),
            );

            /// 滑动关闭
            // return new Dismissible(
            //   // Each Dismissible must contain a Key. Keys allow Flutter to
            //   // uniquely identify Widgets.
            //   key: new Key(item),
            //   // We also need to provide a function that will tell our app
            //   // what to do after an item has been swiped away.
            //   onDismissed: (direction) {
            //     items.removeAt(index);

            //     Scaffold.of(context).showSnackBar(
            //         new SnackBar(content: new Text("$item dismissed")));
            //   },
            //   // Show a red background as the item is swiped away
            //   background: new Container(color: Colors.red),
            //   child: new ListTile(title: new Text('$item')),
            // );

          },
        ),
      ),
    );
  }
}
