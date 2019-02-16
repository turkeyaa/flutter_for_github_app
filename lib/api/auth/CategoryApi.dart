import '../RestApi.dart';

class CategoryApi extends RestApi {
  /** 上传文件基类 */
  CategoryApi():super(url: "http://localhost:8181/category/list", httpMethods:HttpMethods.HttpMethods_Get);
}