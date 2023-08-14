class DataAsset {
  String name;
  String pathName;
  String numberService;

  DataAsset(
      {required this.name,
      required this.pathName,
      required this.numberService});
}

class DatabaseAsset {
  List<DataAsset> dataAsset = [
    DataAsset(
        name: 'Haircut',
        pathName: 'asset/icon/haircut_icon.png',
        numberService: '10 SERVICES'),
    DataAsset(
        name: 'Shaving',
        pathName: 'asset/icon/shaving_icon.png',
        numberService: '6 SERVICES'),
    DataAsset(
        name: 'Styling',
        pathName: 'asset/icon/styling_icon.png',
        numberService: '7 SERVICES')
  ];
}
