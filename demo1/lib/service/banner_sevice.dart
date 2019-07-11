import 'package:demo1/model/banner_model.dart';
import 'package:demo1/model/banner_model_list.dart';
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

Future<List<BannerModelList>> decodeBanner1() async{
  final bannerJson = await rootBundle.loadString('assets/banner.json');
  final jsonMap = json.decode(bannerJson);
  print('jsonMap runType is ${jsonMap.runtimeType}');
  BannerModel bannerModel = BannerModel.fromJson(jsonMap);
  List<BannerModelList> lists = bannerModel.data;
  print('Banner desc is ${lists.toString()}');
  return lists;
}
