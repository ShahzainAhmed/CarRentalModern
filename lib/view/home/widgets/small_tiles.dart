import 'package:car_rental_modern/models/small_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallTiles extends StatelessWidget {
  final VoidCallback onTap;
  final SmallTilesModel smallTilesModel;

  const SmallTiles({
    super.key,
    required this.smallTilesModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 140.h,
            width: 120.w,
            decoration: BoxDecoration(
              color: AppColors.kBlackColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          Text(smallTilesModel.title),
        ],
      ),
    );
  }
}
