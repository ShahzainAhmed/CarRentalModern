import 'package:animate_do/animate_do.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    "Los Angeles, California, U.S.",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
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
                FadeInRight(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    "Sep 1, 10:00 AM - Sep 3 , 10:00 AM",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
