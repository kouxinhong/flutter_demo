// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleListModel _$ArticleListModelFromJson(Map<String, dynamic> json) {
  return ArticleListModel(
    curpage: json['curpage'] as int,
    datas: (json['datas'] as List)
        ?.map((e) => e == null
            ? null
            : ArticleItemModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    offset: json['offset'] as int,
    over: json['over'] as bool,
    pageCount: json['pageCount'] as int,
    size: json['size'] as int,
    total: json['total'] as int,
  );
}

Map<String, dynamic> _$ArticleListModelToJson(ArticleListModel instance) =>
    <String, dynamic>{
      'curpage': instance.curpage,
      'datas': instance.datas,
      'offset': instance.offset,
      'over': instance.over,
      'pageCount': instance.pageCount,
      'size': instance.size,
      'total': instance.total,
    };
