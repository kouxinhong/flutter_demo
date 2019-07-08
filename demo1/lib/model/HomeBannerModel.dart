import 'package:json_annotation/json_annotation.dart';
import '../model//BaseBanner.dart';
import '../model/HomeBannerItemModel.dart';

part 'HomeBannerModel.g.dart';

@JsonSerializable()
class HomeBannerModel extends BaseBanner<List<HomeBannerItemModel>> {
  HomeBannerModel(
      List<HomeBannerItemModel> data, int errorCode, String errorMsg)
      : super(data, errorCode, errorMsg);

  factory HomeBannerModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerModelFromJson(json);

  toJson() => _$HomeBannerModelToJson(this);
}