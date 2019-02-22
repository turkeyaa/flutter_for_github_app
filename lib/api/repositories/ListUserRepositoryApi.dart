import 'package:flutter_for_github_app/api/RestApi.dart';
import 'package:dio/dio.dart';

import 'package:flutter_for_github_app/model/Repository.dart';

class ListUserRepositoryApi extends RestApi {
  List<Repository> model_list = new List();

  /** 上传文件基类 */
  ListUserRepositoryApi()
      : super(
            url: "users/turkeyaa/repos",
            httpMethods: HttpMethods.HttpMethods_Get);

  @override
  onSuccessed(Response response) {
    super.onSuccessed(response);
    // List data =response.data;
    // print(data.length);
    // print(data);
    model_list = Repository.listFromJson(response.data);
  }
}
