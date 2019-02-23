import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class ReleasePage extends StatefulWidget {
  final String userName;
  final String reposName;
  final String releaseUrl;
  final String tagUrl;

  ReleasePage(this.userName, this.reposName, this.releaseUrl, this.tagUrl);

  @override
  _ReleasePageState createState() => _ReleasePageState();
}

class _ReleasePageState extends State<ReleasePage> {
  List<String> _repos = new List<String>.generate(80, (i) => "Item $i");

  @override
  void initState() {
    super.initState();
    _reposList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("仓库"),
        backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
        centerTitle: true, //设置标题是否局中
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _repos.length == null ? null : _repos.length,
          itemBuilder: (context, index) {
            if (index.isOdd) return new Divider();

            String item = _repos[index];
            return new ListTile(
              title: new Text(item),
              subtitle: new Text(item),
              onTap: () {
                print("index:$index");
                NavigatorUtils.goReposDetail(
                    context, "turkeyaa", "flutter_for_github_app");
              },
            );
          },
        ),
      ),
    );
  }

  _reposList() async {
    // ListUserRepositoryApi api = ListUserRepositoryApi();
    // await api.call();
    // _repos = api.model_list.cast<Repository>();
  }
}
