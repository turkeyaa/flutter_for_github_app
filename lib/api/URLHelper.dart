import 'package:flutter_for_github_app/config/ignoreConfig.dart';

class URLHelper {
  baseURL() {
    return "https://api.github.com/";
  }

  restApiURL(String relativeURL) {
    // return baseURL() + relativeURL;
    return baseURL() + relativeURL + "?client_id=" + NetConfig.CLIENT_ID + "&client_secret=" + NetConfig.CLIENT_SECRET;
  }
}
