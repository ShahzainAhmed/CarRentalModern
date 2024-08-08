import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
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
            Container(
              width: Get.width,
              height: 200.h,
              decoration: BoxDecoration(
                color: AppColors.kBlackColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(largeTilesModel.title),
                const Spacer(),
                const Icon(Icons.star, color: Colors.amber),
                Text(largeTilesModel.rating),
              ],
            ),
            Text("\$${largeTilesModel.price} / day"),
          ],
        ),
      ),
    );
  }
}
