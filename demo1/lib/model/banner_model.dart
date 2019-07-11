import 'BaseBanner.dart';
import 'banner_model_list.dart';

class BannerModel extends BaseBanner<List<BannerModelList>> {
  BannerModel({List<BannerModelList> data, int errorCode, String errorMsg})
      : super(data, errorCode, errorMsg);

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    print('tttttttt ${json}');
    final data = json['data'] as List;
//    List<BannerModelList> banners = List<BannerModelList>.from(data);
    //第一种写法
    List<BannerModelList> banners =
        data.map((values) => BannerModelList.fromJson(values)).toList();
    //第二种写法
//    List<BannerModelList> banners = data.map((values) {
//      return BannerModelList.fromJson(values);
//    }).toList();
    print('eeeeeeeee ${banners.toString()}');
    return BannerModel(
        data: banners,
        errorCode: json['errorCode'],
        errorMsg: json['errorMsg']);
  }
}
