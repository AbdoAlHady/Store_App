import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_state.dart';
import 'package:store_app/features/customer/home/presentation/widgets/banners/banners_list_loading_shimmer_effect.dart';
import 'package:store_app/features/customer/home/presentation/widgets/banners/banners_slider_item.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannersBloc, BannersState>(
      builder: (context, state) {
        return state.when(
          empty: () {
            return const SizedBox.shrink();
          },
          loading: () {
            return const BannersListLoadingShimmerEffect();
          },
          success: (bannersList) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: bannersList.length,
                    itemBuilder: (context, index, realIndex) {
                      return BannersSliderItem(imageUrl: bannersList[index]);
                    },
                    options: CarouselOptions(
                      height: 160.h,
                      reverse: true,
                      viewportFraction: 1,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                  ),
                  verticalSpace(10),

                  // Dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: bannersList.asMap().entries.map((e) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        width: 10.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:activeIndex==e.key.round()? context.color.bluePinkLight: Colors.grey,
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            );
          },
          failurer: (message) {
            return Text(message);
          },
        );
      },
    );
  }
}

