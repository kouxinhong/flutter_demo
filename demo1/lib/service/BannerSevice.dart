import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';
import '../model/HomeBannerModel.dart';
import '../model/HomeBannerItemModel.dart';

Future<String> _loadCountryJson() async {
  return await rootBundle.loadString('assets/banner.json');
}

Future<List<HomeBannerItemModel>> decodeBanner() async{
  String bannerJson = await _loadCountryJson();

  final jsonMap = json.decode(bannerJson);
  print('jsonMap runType is ${jsonMap.runtimeType}');

    HomeBannerModel banner = HomeBannerModel.fromJson(jsonMap);
    List<HomeBannerItemModel> lists = banner.data;
    for (var item in lists) {
          print('Banner desc is ${item.title}');
    }
  return lists;
}