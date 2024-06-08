import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/features/customer/main/presentation/widgets/icon_nav_bar.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 103.h,
          width: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  SizedBox(height: 15.h),
                  Container(
                    height: 88.h,
                    color: context.color.navBarbg,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 45.h,
                        width: 300.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Home Screen
                              IconNavBar(
                                onTap: () {},
                                icon: AppImages.homeTab,
                                isSelected: true,
                              ),
                              // Categories Screen
                              IconNavBar(
                                onTap: () {},
                                icon: AppImages.categoriesTab,
                                isSelected: true,
                              ),
                              // Favourites Screen
                              IconNavBar(
                                onTap: () {},
                                icon: AppImages.favouritesTab,
                                isSelected: false,
                              ),
                              // Profile Screen
                              IconNavBar(
                                onTap: () {},
                                icon: AppImages.profileTab,
                                isSelected: false,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Background Icon
              Positioned(
                top: -12,
                left: -8,
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(context.image.bigNavBar!),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),

              Positioned(
                top: 10,
                left: 35,
                child: SvgPicture.asset(
                  AppImages.carShop,
                  color: Colors.white,
                  height: 20.h,
                  width: 20.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
