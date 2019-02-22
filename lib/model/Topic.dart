import 'package:json_annotation/json_annotation.dart';

part "Topic.g.dart";

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

  Topic({this.id, this.title, this.content, this.userId, this.createTime, this.author, this.likeNum, this.collectNum, this.replyNum, this.viewNum, this.isGood, this.categoryId});

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
  Map<String, dynamic> toJson() => _$TopicToJson(this);

  
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