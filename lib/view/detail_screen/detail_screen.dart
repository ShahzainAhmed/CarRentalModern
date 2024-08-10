import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/bottom_sheet_widget.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/details_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  final LargeTilesModel largeTilesModel;
  const DetailScreen({super.key, required this.largeTilesModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.kWhiteColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ios_share_rounded),
              color: AppColors.kWhiteColor,
            )
          ],
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(largeTilesModel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DetailsContainer(largeTilesModel: largeTilesModel),
          ),
        ],
      ),
      bottomSheet: const BottomSheetWidget(),
    );
  }
}
