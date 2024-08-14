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
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
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
            style: AppTypography.kLight12
                .copyWith(color: AppColors.kDarkGreyColor),
          ),
          SizedBox(height: 10.h),
          Text(
            carSpecsModel.subTitle,
            style: AppTypography.kBold14,
          ),
        ],
      ),
    );
  }
}
