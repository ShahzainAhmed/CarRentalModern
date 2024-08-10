import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/reviews_container_widget.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/technical_specifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsContainer extends StatelessWidget {
  final LargeTilesModel largeTilesModel;
  const DetailsContainer({super.key, required this.largeTilesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.h),
      width: Get.width,
      height: Get.height * 0.6,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(26.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                largeTilesModel.title,
                style: AppTypography.kMedium20,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Car rating: ${largeTilesModel.fullRating}/100",
                style: AppTypography.kLight12,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ReviewsContainerWidget(
                rating: largeTilesModel.rating,
                reviews: "${largeTilesModel.reviews} reviews",
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Technical Specifications",
                style: AppTypography.kMedium14,
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 70.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TechnicalSpecificationsWidget();
                },
              ),
            ),
            SizedBox(height: 36.h),
            Divider(
              color: AppColors.kBlackColor.withOpacity(0.1),
              height: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
