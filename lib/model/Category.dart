import 'package:json_annotation/json_annotation.dart';

part 'Category.g.dart';

@JsonSerializable()

class Category {
  final int id;
  final String name;
  final int createTime;

  Category({this.id, this.name, this.createTime});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  static List<Category> listFromJson(List<dynamic> json) {
    return json == null ? new List<Category>() : json.map((value) => new Category.fromJson(value)).toList();
  }
}
