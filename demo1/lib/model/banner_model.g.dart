// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return BannerModel(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : BannerModelList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    errorCode: json['errorCode'] as int,
    errorMsg: json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };
