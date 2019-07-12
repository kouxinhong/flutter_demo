import 'package:json_annotation/json_annotation.dart';

part 'banner_model_list.g.dart';

@JsonSerializable()
class BannerModelList {
  String desc;
  int id;
  String imagePath;
  int isVisible;
  int order;
  String title;
  int type;
  String url;

  BannerModelList(
      {this.desc,
      this.id,
      this.imagePath,
      this.isVisible,
      this.order,
      this.title,
      this.type,
      this.url});

  factory BannerModelList.fromJson(Map<String, dynamic> json) {
    return _$BannerModelListFromJson(json);
  }

  Map<String, dynamic> toJson(){
     return _$BannerModelListToJson(this);
  }
}
