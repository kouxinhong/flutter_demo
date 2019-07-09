import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';
import '../model/HomeBannerModel.dart';
import '../model/HomeBannerItemModel.dart';

Future<List<HomeBannerItemModel>> decodeBanner() async {
  String bannerJson = await rootBundle.loadString('assets/banner.json');

  final jsonMap = json.decode(bannerJson);
  print('jsonMap runType is ${jsonMap.runtimeType}');
  HomeBannerModel banner = HomeBannerModel.fromJson(jsonMap);
  List<HomeBannerItemModel> lists = banner.data;
  for (var item in lists) {
    print('Banner desc is ${item.title}');
  }
  return lists;
}
