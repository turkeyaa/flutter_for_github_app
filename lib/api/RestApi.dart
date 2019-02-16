import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';

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

  final int timeout = 10;

  final Dio dio = new Dio();

  RestApi({this.url, this.httpMethods});

  /// 开始数据请求
  call() async {
    if (httpMethods ==HttpMethods.HttpMethods_Get) {
      Response response = await dio.get(url);
      return response;
    } else if (httpMethods ==HttpMethods.HttpMethods_Post) {
      Response response = await dio.post(url, data: queryPostData());
      return response;
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
  
}