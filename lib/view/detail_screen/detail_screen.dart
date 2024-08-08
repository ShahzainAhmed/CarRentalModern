import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/bottom_sheet_widget.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/car_details.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/reviews_container.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/technical_specifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.kWhiteColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ios_share_rounded),
              color: AppColors.kWhiteColor,
            )
          ],
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.6,
            color: AppColors.kBlackColor,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
                    const CarDetails(),
                    SizedBox(height: 20.h),
                    const ReviewsContainer(),
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
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 12.w),
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
            ),
          ),
        ],
      ),
      bottomSheet: const BottomSheetWidget(),
    );
  }
}


/* 
Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColors.kBlackColor,
                                ),
                              ],
                            ),
                            Column(
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
                            const Text("Rental rules"),
                          ],
                        )
 */