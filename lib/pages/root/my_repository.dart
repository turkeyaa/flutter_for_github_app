import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/api/repositories/ListUserRepositoryApi.dart';
import 'package:flutter_for_github_app/model/Repository.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class My_Repository extends StatefulWidget {
  @override
  My_RepositoryState createState() => new My_RepositoryState();
}

class My_RepositoryState extends State<My_Repository> {
  List<Repository> _repos;
  // List<String> _repos = new List<String>.generate(80, (i) => "Item $i");

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
        body: new Container(
          child: ListView.builder(
            itemCount: _repos.length == null ? null : _repos.length,
            itemBuilder: (context, index) {
              // if (index.isOdd) return new Divider();

              Repository item = _repos[index];

              return new GestureDetector(
                onTap: () {
                  print(index);
                  NavigatorUtils.goReposDetail(context, "turkeyaa", "reposName");
                },
                child: new Container(
                  padding: new EdgeInsets.all(15.0),
                  child: new Column(children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Image.network(
                          item.owner.avatar_url,
                          width: 60,
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Text(item.name),
                            new Text(
                              item.owner.login,
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        new Text(
                          " 1小时 ",
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Text(item.owner.login),
                      ],
                    ),
                    new Row(),
                  ]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _reposList() async {
    ListUserRepositoryApi api = ListUserRepositoryApi();
    await api.call();

    setState(() {
      _repos = api.model_list.cast<Repository>();
    });
  }
}
