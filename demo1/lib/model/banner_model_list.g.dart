// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModelList _$BannerModelListFromJson(Map<String, dynamic> json) {
  return BannerModelList(
    desc: json['desc'] as String,
    id: json['id'] as int,
    imagePath: json['imagePath'] as String,
    isVisible: json['isVisible'] as int,
    order: json['order'] as int,
    title: json['title'] as String,
    type: json['type'] as int,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$BannerModelListToJson(BannerModelList instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isVisible': instance.isVisible,
      'order': instance.order,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };
