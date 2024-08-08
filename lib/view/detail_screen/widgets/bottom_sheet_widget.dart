import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SizedBox(
        height: Get.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("from", style: AppTypography.kLight10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$800',
                        style: AppTypography.kMedium26
                            .copyWith(color: AppColors.kBlackColor),
                      ),
                      TextSpan(
                        text: ' / day',
                        style: AppTypography.kLight10
                            .copyWith(color: AppColors.kBlackColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 46.h,
              width: Get.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.kBlackColor,
              ),
              child: Center(
                child: Text(
                  "Book Now",
                  style: AppTypography.kMedium14
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
