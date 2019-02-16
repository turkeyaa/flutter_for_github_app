import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Ui_list_complex extends StatefulWidget {
  @override
  _Ui_list_complexState createState() => _Ui_list_complexState();
}

class _Ui_list_complexState extends State<Ui_list_complex> {

  final List<ListItem> items = new List<ListItem>.generate(
    100, 
    (i) => i % 4 == 0
    ? new HeadingItem("heading $i") : new MessageItem("sender $i", "body $i"),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("复杂的列表"),
      ),
      body: Container(
        child: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is HeadingItem) {
              return new ListTile(
                title: new Text(
                  item.heading,
                  style:Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is MessageItem) {
              return new ListTile(
                title: new Text(item.sender),
                subtitle: new Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}

abstract class ListItem {
  
}

class HeadingItem implements ListItem  {
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);
}