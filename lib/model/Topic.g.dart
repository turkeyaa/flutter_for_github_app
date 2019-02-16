// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return Topic(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      userId: json['userId'] as String,
      createTime: json['createTime'] as int,
      author: json['author'] as String,
      likeNum: json['likeNum'] as int,
      collectNum: json['collectNum'] as int,
      replyNum: json['replyNum'] as int,
      viewNum: json['viewNum'] as int,
      isGood: json['isGood'] as int,
      categoryId: json['categoryId'] as int);
}

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'userId': instance.userId,
      'createTime': instance.createTime,
      'author': instance.author,
      'likeNum': instance.likeNum,
      'collectNum': instance.collectNum,
      'replyNum': instance.replyNum,
      'viewNum': instance.viewNum,
      'isGood': instance.isGood,
      'categoryId': instance.categoryId
    };
