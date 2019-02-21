import 'package:flutter/material.dart';

class CodeDetailPageWeb extends StatefulWidget {

  final String userName;
  final String reposName;
  final String path;
  final String data;
  final String title;
  final String branch;
  final String htmlUrl;

  CodeDetailPageWeb({this.title, this.userName, this.reposName, this.path, this.data, this.branch, this.htmlUrl});

  @override
  _CodeDetailPageWebState createState() => _CodeDetailPageWebState();
}

class _CodeDetailPageWebState extends State<CodeDetailPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}