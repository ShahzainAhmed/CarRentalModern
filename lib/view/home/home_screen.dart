import 'package:car_rental_modern/models/categories_model.dart';
import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/models/small_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/view/detail_screen/detail_screen.dart';
import 'package:car_rental_modern/view/home/widgets/large_tiles.dart';
import 'package:car_rental_modern/view/home/widgets/location_container.dart';
import 'package:car_rental_modern/view/home/widgets/small_tiles.dart';
import 'package:car_rental_modern/view/home/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: Stack(
        children: [
          const LocationContainer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(top: 20.h),
              width: Get.width,
              height: Get.height * 0.84,
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
                      height: 30.h,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: categoriesList.length,
                        itemBuilder: (context, index) {
                          return TabBarWidget(
                            isSelected: selectedIndex == index,
                            title: categoriesList[index],
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 170.h,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        physics: const BouncingScrollPhysics(),
                        itemCount: smallTilesList.length,
                        itemBuilder: (context, index) {
                          return SmallTiles(
                            smallTilesModel: smallTilesList[index],
                            onTap: () => Get.to(const DetailScreen()),
                          );
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10.h),
                      shrinkWrap: true,
                      itemCount: largeTilesList.length,
                      itemBuilder: (context, index) {
                        return LargeTiles(
                          largeTilesModel: largeTilesList[index],
                          onTap: () => Get.to(DetailScreen()),
                          
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
