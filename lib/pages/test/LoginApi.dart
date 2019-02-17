import 'package:flutter_for_github_app/api/RestApi.dart';
import 'package:dio/dio.dart';

class LoginApi extends RestApi {
  
  final String account;
  final String password;

  String token;

  LoginApi({this.account, this.password}) : super(url: "http://localhost:8181/auth/login", httpMethods:HttpMethods.HttpMethods_Post);
  
  @override
  queryPostData() {
    return {
      "account":account,
      "password":password
    };
  }

  @override
  onSuccessed(Response response) {
    token = response.data["data"];
  }
}