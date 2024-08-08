import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: AppColors.kBlackColor,
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
        height: Get.height,
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  size: 20,
                  Icons.location_on,
                  color: AppColors.kWhiteColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Los Angeles, California, U.S.",
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kWhiteColor),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                const Icon(
                  size: 20,
                  Icons.calendar_month_rounded,
                  color: AppColors.kWhiteColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Sep 1, 10:00 AM - Sep 3 , 10:00 AM",
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kWhiteColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
