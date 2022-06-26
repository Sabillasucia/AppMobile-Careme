import 'package:careme/model/api/Careme_api.dart';
import 'package:flutter/material.dart';

class BannerKesehatan extends ChangeNotifier{
  List<dynamic> dataBanner = [];

  getDataBanner() async{
    final getAllDataBanner = await CareMeAPI().getBannerCareMe();
    dataBanner = getAllDataBanner;
    notifyListeners();
  }
}