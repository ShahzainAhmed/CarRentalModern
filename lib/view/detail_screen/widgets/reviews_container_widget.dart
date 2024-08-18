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
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: Get.width,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.kGreyColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            horizontalTitleGap: 10,
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.kBlackColor,
              backgroundImage: AssetImage(AppAssets.logo),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DreamCars Agency",
                  style: AppTypography.kBold.copyWith(fontSize: 14.sp),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 22),
                    SizedBox(width: 4.w),
                    Text(rating, style: AppTypography.kBold12),
                    SizedBox(width: 6.w),
                    CircleAvatar(
                        backgroundColor: AppColors.kBlackColor, radius: 2.r),
                    SizedBox(width: 6.w),
                    Text(
                      reviews,
                      style: AppTypography.kLight12,
                    ),
                  ],
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Rental rules",
                  style: AppTypography.kBold10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
