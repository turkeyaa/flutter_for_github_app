import 'package:dio/dio.dart';

import 'package:flutter_for_github_app/api/RestApi.dart';
import 'package:flutter_for_github_app/model/Repository.dart';

import 'package:flutter_for_github_app/local/LocalStorage.dart';
import 'package:flutter_for_github_app/config/Config.dart';

class UserRepositoryDetailApi extends RestApi {
  
  Repository model;

  final String reposname;
  final String username;

  UserRepositoryDetailApi({this.username, this.reposname})
      : super(
            url: "repos/" + username + "/" + reposname,
            httpMethods: HttpMethods.HttpMethods_Get);

  @override
  onSuccessed(Response response) {
    super.onSuccessed(response);
    model = Repository.fromJson(response.data);
  }
}
