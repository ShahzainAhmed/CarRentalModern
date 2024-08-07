import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
                color: AppColors.kWhiteColor)
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
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              width: Get.width,
              height: Get.height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(26.r),
                ),
                color: AppColors.kLightGreyColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Audi R8 Performance",
                    style: AppTypography.kMedium20,
                  ),
                  Text(
                    "Car rating 92/100",
                    style: AppTypography.kLight12,
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    width: Get.width,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: AppColors.kBlackColor.withOpacity(0.2),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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