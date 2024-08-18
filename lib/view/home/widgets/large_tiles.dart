import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LargeTiles extends StatelessWidget {
  final LargeTilesModel largeTilesModel;
  final VoidCallback onTap;

  const LargeTiles({
    super.key,
    required this.onTap,
    required this.largeTilesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: largeTilesModel.image,
              child: Container(
                width: Get.width,
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(largeTilesModel.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    largeTilesModel.title,
                    style: AppTypography.kBold.copyWith(fontSize: 16.sp),
                  ),
                  const Spacer(),
                  const Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 4.w),
                  Text(
                    largeTilesModel.rating,
                    style: AppTypography.kBold12,
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          '\$${largeTilesModel.price}', // The price part in bold
                      style: AppTypography.kBlack.copyWith(
                          fontSize: 12.sp, color: AppColors.kBlackColor),
                    ),
                    TextSpan(
                      text: ' / day',
                      style: AppTypography.kLight10
                          .copyWith(color: AppColors.kBlackColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
