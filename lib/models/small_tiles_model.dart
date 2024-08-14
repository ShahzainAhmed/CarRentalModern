import 'package:car_rental_modern/resources/app_assets.dart';

class SmallTilesModel {
  final String title;
  final String image;

  SmallTilesModel({
    required this.title,
    required this.image,
  });
}

List smallTilesList = [
  SmallTilesModel(
    title: "Sports",
    image: AppAssets.car2,
  ),
  SmallTilesModel(
    title: "Electric",
    image: AppAssets.car3,
  ),
  SmallTilesModel(
    title: "Legends",
    image: AppAssets.car1,
  ),
  SmallTilesModel(
    title: "Classic",
    image: AppAssets.car8,
  ),
];
