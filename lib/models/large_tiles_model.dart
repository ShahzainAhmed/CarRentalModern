import 'package:car_rental_modern/models/car_specs_model.dart';
import 'package:car_rental_modern/resources/app_assets.dart';

class LargeTilesModel {
  final String title;
  final String image;
  final String price;
  final String fullRating;
  final String rating;
  final String reviews;
  List<CarSpecsModel> myCarSpecsList;

  LargeTilesModel({
    required this.title,
    required this.image,
    required this.price,
    required this.fullRating,
    required this.rating,
    required this.reviews,
    required this.myCarSpecsList,
  });
}

List largeTilesList = [
  LargeTilesModel(
    title: "Lamborghini Huracan",
    image: AppAssets.car7,
    price: "1000",
    fullRating: "84",
    rating: "4.8",
    reviews: "19",
    myCarSpecsList: [
      CarSpecsModel(title: "Engine", subTitle: "610 hp, 5.2 l"),
      CarSpecsModel(title: "0-100 km/h", subTitle: "3.2 s"),
      CarSpecsModel(title: "Drive", subTitle: "All-wheel"),
    ],
  ),
  LargeTilesModel(
    title: "Audi R8 Performance",
    image: AppAssets.car4,
    price: "800",
    fullRating: "92",
    rating: "5.0",
    reviews: "14",
    myCarSpecsList: [
      CarSpecsModel(title: "Engine", subTitle: "577 hp, 4.0 l"),
      CarSpecsModel(title: "0-100 km/h", subTitle: "3.6 s"),
      CarSpecsModel(title: "Drive", subTitle: "Rear-wheel"),
    ],
  ),
  LargeTilesModel(
    title: "Mercedes AMG GT",
    image: AppAssets.car6,
    price: "900",
    fullRating: "88",
    rating: "4.9",
    reviews: "16",
    myCarSpecsList: [
      CarSpecsModel(title: "Engine", subTitle: "661 hp, 3.9 l"),
      CarSpecsModel(title: "0-100 km/h", subTitle: "3.0 s"),
      CarSpecsModel(title: "Drive", subTitle: "Rear-wheel"),
    ],
  ),
];
