import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnicalSpecificationsWidget extends StatelessWidget {
  const TechnicalSpecificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      width: 160.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: AppColors.kBlackColor.withOpacity(0.1)),
          boxShadow: const []),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Engine"),
          Text("610 hp, 5.2 l"),
        ],
      ),
    );
  }
}
