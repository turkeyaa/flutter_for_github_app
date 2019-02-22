import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/api/repositories/ListUserRepositoryApi.dart';
import 'package:flutter_for_github_app/model/Repository.dart';

class My_Repository extends StatefulWidget {
  @override
  My_RepositoryState createState() => new My_RepositoryState();
}

class My_RepositoryState extends State<My_Repository> {
  List<Repository> _repos;

  @override
  void initState() {
    super.initState();
    _reposList();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("仓库"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: Container(
          child: ListView.builder(
            itemCount: _repos.length == null ? null : _repos.length,
            itemBuilder: (context, index) {
              Repository item = _repos[index];
              // return new ListTile(
              //   title: new Text(item.name),
              //   subtitle: new Text(item.owner.login),
              // );
              return new Container(
                child: new Column(children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Image.network(
                        item.owner.avatar_url,
                        width: 60,
                      ),
                      new Text(item.name),
                      new Text(item.owner.login),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(item.owner.login),
                    ],
                  ),
                ]),
              );
            },
          ),
        ),
      ),
    );
  }

  _reposList() async {
    // if (_repos.length > 0) {
    //   return;
    // }
    ListUserRepositoryApi api = ListUserRepositoryApi();
    await api.call();
    _repos = api.model_list.cast<Repository>();
  }
}