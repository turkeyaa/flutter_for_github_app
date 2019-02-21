import 'package:flutter/material.dart';

class CodeDetailPage extends StatefulWidget {

  final String userName;
  final String reposName;
  final String path;
  final String data;
  final String title;
  final String branch;
  final String htmlUrl;

  CodeDetailPage({this.title, this.userName, this.reposName, this.path, this.data, this.branch, this.htmlUrl});

  @override
  _CodeDetailPageState createState() => _CodeDetailPageState();
}

class _CodeDetailPageState extends State<CodeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}