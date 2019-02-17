import 'package:flutter_for_github_app/api/RestApi.dart';
import 'package:dio/dio.dart';


import 'package:flutter_for_github_app/model/Category.dart';

class CategoryApi extends RestApi {

  List<Category> model_list;

  /** 上传文件基类 */
  CategoryApi():super(url: "http://localhost:8181/category/list", httpMethods:HttpMethods.HttpMethods_Get);

  @override
  onSuccessed(Response response) {
    model_list = Category.listFromJson(response.data["data"]);
  }
}