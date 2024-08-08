import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        width: Get.width,
        height: 80.h,
        decoration: BoxDecoration(
          color: AppColors.kGreyColor,
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
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("DreamCars Agency"),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      Text(
                        "5.0",
                        style: AppTypography.kLight12,
                      ),
                      SizedBox(width: 4.w),
                      CircleAvatar(
                        backgroundColor: AppColors.kBlackColor,
                        radius: 3.r,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "14 reviews",
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
      ),
    );
  }
}
