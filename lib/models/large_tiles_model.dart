class LargeTilesModel {
  final String title;
  final String image;
  final String price;
  final String rating;

  LargeTilesModel({
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  });
}

List largeTilesList = [
  LargeTilesModel(
    title: "Audi R8 Performance",
    image: "assets/images/audi_r8.jpg",
    price: "800",
    rating: "5.0",
  ),
  LargeTilesModel(
    title: "BMW M4 Coupe",
    image: "assets/images/bmw_m4.jpg",
    price: "750",
    rating: "4.8",
  ),
  LargeTilesModel(
    title: "Mercedes AMG GT",
    image: "assets/images/mercedes_amg_gt.jpg",
    price: "900",
    rating: "4.9",
  ),
  LargeTilesModel(
    title: "Porsche 911 Carrera",
    image: "assets/images/porsche_911.jpg",
    price: "850",
    rating: "4.7",
  ),
  LargeTilesModel(
    title: "Lamborghini Huracan",
    image: "assets/images/lamborghini_huracan.jpg",
    price: "1000",
    rating: "5.0",
  ),
  LargeTilesModel(
    title: "Ferrari 488 Spider",
    image: "assets/images/ferrari_488.jpg",
    price: "1200",
    rating: "5.0",
  ),
];
