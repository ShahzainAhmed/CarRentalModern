import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/view/home/widgets/large_tiles.dart';
import 'package:car_rental_modern/view/home/widgets/small_tiles.dart';
import 'package:car_rental_modern/view/home/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(top: 20.h),
          width: Get.width,
          height: Get.height * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.r),
            ),
            color: AppColors.kWhiteColor,
          ),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 20.w),
                    separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const TabBarWidget();
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 170.h,
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 20.w),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SmallTiles();
                    },
                  ),
                ),
                SizedBox(height: 26.h),
                Divider(
                  color: AppColors.kBlackColor.withOpacity(0.1),
                  height: 0.1,
                ),
                SizedBox(height: 26.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("105 available"),
                      Text("Popular"),
                    ],
                  ),
                ),
                ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const LargeTiles();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
