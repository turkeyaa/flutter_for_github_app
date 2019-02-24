import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:collection';
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

  // final bool _isCancel = false;
  // final int _timeout = 10;

  RestApi({this.url, this.httpMethods});

  /// 开始数据请求
  call() async {
    Options option = Options(method: getHttpMethod());
    option.connectTimeout = 15000;
    option.contentType =
        new ContentType("application", "json", charset: "utf-8");

    Map<String, dynamic> headers = new Map();

    /// 配置header
    if (queryHeaderAuthorization().length > 0) {
      headers["Authorization"] = "Basic " + queryHeaderAuthorization();
      option.headers = headers;
    }

    final Dio dio = new Dio();
    Response response;
    try {
      response = await dio.request(URLHelper().restApiURL(url), data: queryPostData(), options: option);
      if (response.data != null) {
        /// 成功
        onSuccessed(response);
      } else {
        /// 失败
        onFailed(null);
      }
    } on DioError catch (e) {
      Response errorResponse;
      if (e.response !=null) {
        errorResponse = errorResponse;
        onError(e);
      } else {
        errorResponse = new Response(statusCode: 1000);
        onFailed(e);
      }
      if (e.type ==DioErrorType.CONNECT_TIMEOUT) {
        errorResponse.statusCode = 1001;
        onTimeout();
      }
    } finally {
      
    }
    /*
    if (httpMethods == HttpMethods.HttpMethods_Get) {
      // Response response = await dio.get(URLHelper().restApiURL(url));
      response = await dio.request(URLHelper().restApiURL(url),
          data: queryGetParameters(), options: option);
      // return response;
      // onSuccessed(response);
      if (response.data != null) {
        /// 成功
        onSuccessed(response);
      } else {
        /// 失败
        onFailed(null);
      }
    } else if (httpMethods == HttpMethods.HttpMethods_Post) {
      // Response response = await dio.post(URLHelper().restApiURL(url), data: queryPostData());
      option.method = "post";
      response = await dio.request(url, data: queryPostData(), options: option);
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
    */

  }

  /// 配置参数 - 子类实现
  queryPostData() {
    return {};
  }
  /// todo - 待废弃
  queryGetParameters() {
    return {};
  }

  /// 配置header - 子类实现
  String queryHeaderAuthorization() {
    return "";
  }

  /// 方法类型
  String getHttpMethod() {
    if (httpMethods == HttpMethods.HttpMethods_Get) {
      return "get";
    } else {
      return "post";
    }
  }

  /// 回调
  onSuccessed(Response response) {
    print(
        "================================日志开始================================");
    print(response);
    print(
        "================================日志结束================================");
  }

  onFailed(Error error) {}
  onCancelled() {}
  onTimeout() {}
  onError(Error error) {}
}
