import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:flutter_for_github_app/api/URLHelper.dart';

enum HttpMethods {
  HttpMethods_Get,
  HttpMethods_Post,
  HttpMethods_Put,
  HttpMethods_Delete,
  HttpMethods_File,
}

class RestApi {

  /** 网络数据请求基类 */

  final String url;
  final HttpMethods httpMethods;

  final bool _isCancel =false;

  final int _timeout = 10;

  final Dio dio = new Dio();

  RestApi({this.url, this.httpMethods});

  /// 开始数据请求
  call() async {
    if (httpMethods ==HttpMethods.HttpMethods_Get) {
      Response response = await dio.get(URLHelper().restApiURL(url));
      // return response;
      // onSuccessed(response);

      if (response.data != null) {
        /// 成功
        onSuccessed(response);
      } else {
        /// 失败
        onFailed(null);
      }
    } else if (httpMethods ==HttpMethods.HttpMethods_Post) {
      Response response = await dio.post(URLHelper().restApiURL(url), data: queryPostData());
      // return response;
      // onSuccessed(response);

      if (response.data != null) {
        /// 成功
        onSuccessed(response);
      } else {
        /// 失败
        onFailed(null);
      }
    } else {
      /// todo - 暂时不考虑
    }
  }

  /// 配置参数 - 子类实现
  queryPostData() {
    return null;
  }
  queryGetParameters() {
    return null;
  }
  
  /// 配置header - 子类实现
  
  /// 回调
  onSuccessed(Response response) {
    print("================================日志开始================================");
    print(response);
    print("================================日志结束================================");
  }
  onFailed(Error error) {

  }
  onCancelled() {

  }
  onTimeout() {

  }
  onError(Error error) {

  }
}