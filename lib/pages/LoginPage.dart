import 'package:flutter/material.dart';
import 'package:flutter_for_github_app/utils/NavigatorUtils.dart';

class LoginPage extends StatefulWidget {
  static final String sName = "login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final accountController =TextEditingController();
  final passwordController = TextEditingController();
  String _errorText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        body: new Container(
          color: Theme.of(context).primaryColor,
          child: new Center(
            child: SafeArea(
              child: SingleChildScrollView(
                child: new Card(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        controller: accountController,
                        decoration: InputDecoration(
                            hintText: "请输入账号",
                            errorText: _getErrorText()),
                        onSubmitted: (String text) {},
                      ),
                      new TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: "请输入密码",
                            errorText: _getErrorText()),
                        onSubmitted: (String text) {},
                      ),
                      new FlatButton(
                        child: new Text("登录"),
                        onPressed: () {
                          NavigatorUtils.goTabHome(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getErrorText() {
    return _errorText;
  }
}
