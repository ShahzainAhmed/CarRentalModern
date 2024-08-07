import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LargeTiles extends StatelessWidget {
  const LargeTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.kBlackColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          SizedBox(height: 10.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Audi R8 Performance"),
              Spacer(),
              Icon(Icons.star, color: Colors.amber),
              Text("5.0"),
            ],
          )
        ],
      ),
    );
  }
}
