
import 'package:json_annotation/json_annotation.dart';

import 'article_item_model.dart';

part 'article_list_model.g.dart';

@JsonSerializable()
class ArticleListModel  {
  int curpage;
  List<ArticleItemModel> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;

  ArticleListModel({this.curpage, this.datas, this.offset, this.over,
      this.pageCount, this.size, this.total});

  factory ArticleListModel.fromJson(Map<String,dynamic> json){
    return _$ArticleListModelFromJson(json);
  }

  Map<String, dynamic> toJson(){
    return _$ArticleListModelToJson(this);
  }
}