class URLHelper {
  baseURL() {
    return "https://api.github.com/";
  }
  
  restApiURL(String relativeURL) {
    return baseURL() + relativeURL;
  }
}