import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter_for_github_app/pages/CodeDetailPage.dart';
import 'package:flutter_for_github_app/pages/CodeDetailPageWeb.dart';
import 'package:flutter_for_github_app/pages/CommonListPage.dart';
import 'package:flutter_for_github_app/pages/GSYWebView.dart';
import 'package:flutter_for_github_app/pages/HomePage.dart';
import 'package:flutter_for_github_app/pages/IssueDetailPage.dart';
import 'package:flutter_for_github_app/pages/LoginPage.dart';
import 'package:flutter_for_github_app/pages/NotifyPage.dart';
import 'package:flutter_for_github_app/pages/PersonPage.dart';
import 'package:flutter_for_github_app/pages/PhotoViewPage.dart';
import 'package:flutter_for_github_app/pages/PushDetailPage.dart';
import 'package:flutter_for_github_app/pages/ReleasePage.dart';
import 'package:flutter_for_github_app/pages/RepositoryDetailPage.dart';
import 'package:flutter_for_github_app/pages/SearchPage.dart';
import 'package:flutter_for_github_app/pages/UserProfilePage.dart';
import 'package:flutter_for_github_app/pages/FansPage.dart';
import 'package:flutter_for_github_app/pages/FollowPage.dart';
import 'package:flutter_for_github_app/pages/StarsPage.dart';
import 'package:flutter_for_github_app/app.dart';

class NavigatorUtils {
  ///替换
  static pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  ///切换无参数页面
  static pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  ///主页
  static goHome(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new HomePage()));
  }

  /// tab页
  static goTabHome(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new Guohe()));
  }

  ///登录页
  static goLogin(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new LoginPage()));
  }

  /// 粉丝页
  static goFans(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new FansPage()));
  }
  /// 关注页
  static goFollow(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new FollowPage()));
  }
  /// 星标页
  static goStars(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new StarsPage()));
  }

  ///个人中心
  static goPerson(BuildContext context, String userName) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new PersonPage(userName)));
  }

  ///仓库详情
  static Future<Null> goReposDetail(BuildContext context, String userName, String reposName) {
    return Navigator.push(context, new CupertinoPageRoute(builder: (context) => new RepositoryDetailPage(userName, reposName)));
  }

  ///仓库版本列表
  static Future<Null> goReleasePage(BuildContext context, String userName, String reposName, String releaseUrl, String tagUrl) {
    return Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => new ReleasePage(
                  userName,
                  reposName,
                  releaseUrl,
                  tagUrl,
                )));
  }

  ///issue详情
  static Future<Null> goIssueDetail(BuildContext context, String userName, String reposName, String num, {bool needRightLocalIcon = false}) {
    return Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => new IssueDetailPage(
                  userName,
                  reposName,
                  num,
                  needHomeIcon: needRightLocalIcon,
                )));
  }

  ///通用列表
  static gotoCommonList(BuildContext context, String title, String showType, String dataType, {String userName, String reposName}) {
    Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => new CommonListPage(
                  title,
                  showType,
                  dataType,
                  userName: userName,
                  reposName: reposName,
                )));
  }

  ///文件代码详情
  static gotoCodeDetailPage(BuildContext context,
      {String title, String userName, String reposName, String path, String data, String branch, String htmlUrl}) {
    Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => new CodeDetailPage(
                  title: title,
                  userName: userName,
                  reposName: reposName,
                  path: path,
                  data: data,
                  branch: branch,
                  htmlUrl: htmlUrl,
                )));
  }

  ///仓库详情通知
  static Future<Null> goNotifyPage(BuildContext context) {
    return Navigator.push(context, new CupertinoPageRoute(builder: (context) => new NotifyPage()));
  }

  ///搜索
  static Future<Null> goSearchPage(BuildContext context) {
    return Navigator.push(context, new CupertinoPageRoute(builder: (context) => new SearchPage()));
  }

  ///提交详情
  static Future<Null> goPushDetailPage(BuildContext context, String userName, String reposName, String sha, bool needHomeIcon) {
    return Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => new PushDetailPage(
                  sha,
                  userName,
                  reposName,
                  needHomeIcon: needHomeIcon,
                )));
  }

  ///全屏Web页面
  static Future<Null> goGSYWebView(BuildContext context, String url, String title) {
    return Navigator.push(
      context,
      new CupertinoPageRoute(
        builder: (context) => new GSYWebView(url, title),
      ),
    );
  }

  ///文件代码详情Web
  static gotoCodeDetailPageWeb(BuildContext context,
      {String title, String userName, String reposName, String path, String data, String branch, String htmlUrl}) {
    Navigator.push(
        context,
        new CupertinoPageRoute(
            builder: (context) => new CodeDetailPageWeb(
                  title: title,
                  userName: userName,
                  reposName: reposName,
                  path: path,
                  data: data,
                  branch: branch,
                  htmlUrl: htmlUrl,
                )));
  }

  ///根据平台跳转文件代码详情Web
  static gotoCodeDetailPlatform(BuildContext context,
      {String title, String userName, String reposName, String path, String data, String branch, String htmlUrl}) {
    if (Platform.isIOS) {
      NavigatorUtils.gotoCodeDetailPage(
        context,
        title: title,
        reposName: reposName,
        userName: userName,
        path: path,
        branch: branch,
      );
    } else {
      NavigatorUtils.gotoCodeDetailPageWeb(
        context,
        title: title,
        reposName: reposName,
        userName: userName,
        path: path,
        branch: branch,
      );
    }

    NavigatorUtils.gotoCodeDetailPageWeb(
      context,
      title: title,
      reposName: reposName,
      userName: userName,
      path: path,
      branch: branch,
    );
  }

  ///图片预览
  static gotoPhotoViewPage(BuildContext context, String url) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new PhotoViewPage(url)));
  }

  ///用户配置
  static gotoUserProfileInfo(BuildContext context) {
    Navigator.push(context, new CupertinoPageRoute(builder: (context) => new UserProfilePage()));
  }
}
