import 'package:car_rental_modern/resources/app_assets.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReviewsContainerWidget extends StatelessWidget {
  final String rating;
  final String reviews;

  const ReviewsContainerWidget(
      {super.key, required this.rating, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: Get.width,
      height: 80.h,
      decoration: BoxDecoration(
        color: AppColors.kGreyColor,
        border: Border.all(color: AppColors.kBlackColor.withOpacity(0.09)),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            horizontalTitleGap: 10,
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              backgroundColor: AppColors.kBlackColor,
              backgroundImage: AssetImage(AppAssets.logo),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("DreamCars Agency"),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      rating,
                      style: AppTypography.kLight12,
                    ),
                    SizedBox(width: 4.w),
                    CircleAvatar(
                      backgroundColor: AppColors.kBlackColor,
                      radius: 2.r,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      reviews,
                      style: AppTypography.kLight10,
                    ),
                  ],
                )
              ],
            ),
            trailing: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Rental rules"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
