import 'dart:async';
import 'dart:convert';

import 'package:demo1/constant/constant.dart';
import 'package:demo1/model/banner_model.dart';
import 'package:demo1/model/banner_model_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

Future<List<BannerModelList>> localDecodeBanner() async {
  final bannerJson = await rootBundle.loadString('assets/banner.json');
  final jsonMap = json.decode(bannerJson);
  print('jsonMap runType is ${jsonMap.runtimeType}');
  BannerModel bannerModel = BannerModel.fromJson(jsonMap);
  List<BannerModelList> lists = bannerModel.data;
  print('Banner desc is ${lists.toString()}');
  return lists;
}

Future<List<BannerModelList>> serverDecodeBanner(http.Client client) async {
  final response = await client.get(Url.home_banner);
  return compute(parseBanner, response.body);
}

List<BannerModelList> parseBanner(String responseBody) {
  final jsonMap = json.decode(responseBody);
  BannerModel bannerModel = BannerModel.fromJson(jsonMap);
  List<BannerModelList> lists = bannerModel.data;
  return lists;
}
