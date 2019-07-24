import 'package:demo1/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'article_list_model.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel extends BaseModel<ArticleListModel>{
  ArticleModel(ArticleListModel data, int errorCode, String errorMsg) : super(data, errorCode, errorMsg);

  factory ArticleModel.fromJson(Map<String, dynamic> json){
    return _$ArticleModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}