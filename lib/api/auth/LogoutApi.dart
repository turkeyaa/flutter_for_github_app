import 'package:flutter_for_github_app/config/Config.dart';
import 'package:flutter_for_github_app/local/LocalStorage.dart';

class LogoutApi {
  logout() {
    /// todo - 接口处理
    /// 清楚本地缓存
    
    LocalStorage.remove(Config.USER_BASIC_CODE);
    LocalStorage.remove(Config.USER_NAME_KEY);
    LocalStorage.remove(Config.PW_KEY);
    LocalStorage.remove(Config.TOKEN_KEY);
  }
}