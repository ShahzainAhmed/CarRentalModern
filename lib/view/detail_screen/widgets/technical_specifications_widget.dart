import 'package:car_rental_modern/models/car_specs_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnicalSpecificationsWidget extends StatelessWidget {
  final CarSpecsModel carSpecsModel;
  const TechnicalSpecificationsWidget({super.key, required this.carSpecsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.kBlackColor.withOpacity(0.1),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            carSpecsModel.title,
            style: AppTypography.kMedium12
                .copyWith(color: AppColors.kDarkGreyColor),
          ),
          SizedBox(height: 6.h),
          Text(
            carSpecsModel.subTitle,
            style: AppTypography.kBlack.copyWith(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
