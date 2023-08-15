import 'package:barbershop_app/view/detail_service/detail_service.dart';
import 'package:flutter/material.dart';

class DataAsset {
  String name;
  String pathName;
  String numberService;
  Widget rounte;

  DataAsset(
      {required this.name,
      required this.rounte,
      required this.pathName,
      required this.numberService});
}

class DatabaseAsset {
  List<DataAsset> dataAsset = [
    DataAsset(
        name: 'Haircut',
        pathName: 'asset/icon/shaving_icon.png',
        numberService: '10 SERVICES',
        rounte: DetailService()),
    DataAsset(
        name: 'Shaving',
        pathName: 'asset/icon/haircut_icon.png',
        numberService: '6 SERVICES',
        rounte: DetailService()),
    DataAsset(
        name: 'Styling',
        pathName: 'asset/icon/styling_icon.png',
        numberService: '7 SERVICES',
        rounte: DetailService())
  ];
}
