
import 'package:json_annotation/json_annotation.dart';
part 'article_tag_model.g.dart';
@JsonSerializable()
class ArticleTagModel {
  String name;
  String url;

  ArticleTagModel({this.name, this.url});

  factory ArticleTagModel.fromJson(Map<String, dynamic> json) => _$ArticleTagModelFromJson(json);

  Map<String,dynamic> toJson(){
    return _$ArticleTagModelToJson(this);
  }
}