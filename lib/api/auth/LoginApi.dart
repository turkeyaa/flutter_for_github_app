import '../RestApi.dart';

class LoginApi extends RestApi {
  
  final String account;
  final String password;
  LoginApi({this.account, this.password}) : super(url: "http://localhost:8181/auth/login", httpMethods:HttpMethods.HttpMethods_Post);
  
  @override
  queryPostData() {
    return {
      "account":account,
      "password":password
    };
  }
}