import 'package:json_annotation/json_annotation.dart';

// todo - 编译失败
// topic.g.dart 将在我们运行生成命令后自动生成
// part "Topic.g.dart";

@JsonSerializable()

class Topic {
  String id = null;
  String title = null;
  String content = null;
  String userId = null;
  int createTime = null;
  String author = null;
  int likeNum = null;
  int collectNum = null;
  int replyNum = null;
  int viewNum = null;
  int isGood = null;
  int categoryId = null;

  // factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
  // Map<String, dynamic> toJson() => _$TopicToJson(this);

  Topic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    content =
        json['content']
    ;
    userId =
        json['userId']
    ;
    createTime =
        json['createTime']
    ;
    author =
        json['author']
    ;
    likeNum =
        json['likeNum']
    ;
    collectNum =
        json['collectNum']
    ;
    replyNum =
        json['replyNum']
    ;
    viewNum =
        json['viewNum']
    ;
    isGood =
        json['isGood']
    ;
    categoryId =
        json['categoryId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'userId': userId,
      'createTime': createTime,
      'author': author,
      'likeNum': likeNum,
      'collectNum': collectNum,
      'replyNum': replyNum,
      'viewNum': viewNum,
      'isGood': isGood,
      'categoryId': categoryId
     };
  }

  static List<Topic> listFromJson(List<dynamic> json) {
    return json == null ? new List<Topic>() : json.map((value) => new Topic.fromJson(value)).toList();
  }

  static Map<String, Topic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Topic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Topic.fromJson(value));
    }
    return map;
  }
}