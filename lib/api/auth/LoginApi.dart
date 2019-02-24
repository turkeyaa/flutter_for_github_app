import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:convert';
import 'package:redux/redux.dart';

import 'package:flutter_for_github_app/api/RestApi.dart';

import 'package:flutter_for_github_app/model/User.dart';

import 'package:flutter_for_github_app/local/LocalStorage.dart';
import 'package:flutter_for_github_app/config/Config.dart';
import 'package:flutter_for_github_app/config/ignoreConfig.dart';

class LoginApi extends RestApi {
  final String account;
  final String password;
  
  String token;

  LoginApi({this.account, this.password})
      : super(url: "authorizations", httpMethods: HttpMethods.HttpMethods_Post);

  @override
  queryPostData() {
    return {
      "scopes": ["user", "repo", "gist", "notifications"],
      "note": "admin_script",
      "client_id": NetConfig.CLIENT_ID,
      "client_secret": NetConfig.CLIENT_SECRET
    };
  }

  @override
  String queryHeaderAuthorization() {
    String authCode =account.trim() + ":" + password.trim();
    var bytes = utf8.encode(authCode);
    var base64Str = base64.encode(bytes);
    LocalStorage.save(Config.USER_BASIC_CODE, base64Str);
    return base64Str;
  }

  @override
  onSuccessed(Response response) {
    super.onSuccessed(response);
    
    token = response.data["data"];

    /// 缓存客户信息
    LocalStorage.save(Config.TOKEN_KEY, token);
    LocalStorage.save(Config.USER_NAME_KEY, this.account);
    LocalStorage.save(Config.PW_KEY, this.password);
  }
}
