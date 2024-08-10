import 'package:car_rental_modern/resources/app_assets.dart';

class LargeTilesModel {
  final String title;
  final String image;
  final String price;
  final String fullRating;
  final String rating;
  final String reviews;
  // final String specsHeading;

  LargeTilesModel({
    required this.title,
    required this.image,
    required this.price,
    required this.fullRating,
    required this.rating,
    required this.reviews,
    // required this.specsHeading,
  });
}

List largeTilesList = [
  LargeTilesModel(
    title: "Audi R8 Performance",
    image: AppAssets.car1,
    price: "800",
    fullRating: "92",
    rating: "5.0",
    reviews: "14",
  ),
  LargeTilesModel(
    title: "BMW M4 Coupe",
    image: AppAssets.car2,
    price: "750",
    fullRating: "95",
    rating: "4.6",
    reviews: "12",
  ),
  LargeTilesModel(
    title: "Mercedes AMG GT",
    image: AppAssets.car3,
    price: "900",
    fullRating: "88",
    rating: "4.9",
    reviews: "16",
  ),
  LargeTilesModel(
    title: "Porsche 911 Carrera",
    image: AppAssets.car1,
    price: "850",
    fullRating: "97",
    rating: "4.1",
    reviews: "22",
  ),
  LargeTilesModel(
    title: "Lamborghini Huracan",
    image: AppAssets.car2,
    price: "1000",
    fullRating: "84",
    rating: "4.8",
    reviews: "19",
  ),
  LargeTilesModel(
    title: "Ferrari 488 Spider",
    image: AppAssets.car3,
    price: "1200",
    fullRating: "76",
    rating: "5.0",
    reviews: "21",
  ),
];

List specList = [
  "Engine",
  "0-100 km/h",
  "Drive",
];
