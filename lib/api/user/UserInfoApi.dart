import 'package:dio/dio.dart';
import 'package:flutter_for_github_app/api/RestApi.dart';
import 'package:flutter_for_github_app/model/User.dart';

class UserInfoApi extends RestApi {
  String username;
  User user;

  UserInfoApi({this.username})
      : super(
            url: "users/" + username,
            httpMethods: HttpMethods.HttpMethods_Get);
  
  @override
  onSuccessed(Response response) {
    super.onSuccessed(response);
    this.user = User.fromJson(response.data);
  }
}
