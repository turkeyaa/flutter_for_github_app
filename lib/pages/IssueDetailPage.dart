import 'package:flutter/material.dart';

class IssueDetailPage extends StatefulWidget {

  final String userName;

  final String reposName;

  final String issueNum;

  final bool needHomeIcon;

  IssueDetailPage(this.userName, this.reposName, this.issueNum, {this.needHomeIcon = false});

  @override
  _IssueDetailPageState createState() => _IssueDetailPageState();

}

class _IssueDetailPageState extends State<IssueDetailPage> {



  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}