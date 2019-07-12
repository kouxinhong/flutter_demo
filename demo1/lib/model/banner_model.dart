import 'base_banner.dart';
import 'banner_model_list.dart';

import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel extends BaseBanner<List<BannerModelList>> {
  BannerModel({List<BannerModelList> data, int errorCode, String errorMsg})
      : super(data, errorCode, errorMsg);

//  factory BannerModel.fromJson(Map<String, dynamic> json) {
//    final data = json['data'] as List;
//    //第一种写法
//    List<BannerModelList> banners =
//        data.map((values) => BannerModelList.fromJson(values)).toList();
//    //第二种写法
////    List<BannerModelList> banners = data.map((values) {
////      return BannerModelList.fromJson(values);
////    }).toList();
//    return BannerModel(
//        data: banners,
//        errorCode: json['errorCode'],
//        errorMsg: json['errorMsg']);
//  }
  factory BannerModel.fromJson(Map<String,dynamic> json){
    return _$BannerModelFromJson(json);
  }

  toJson(){
    return _$BannerModelToJson(this);
  }

}
