import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int activeIndex = 0;
  List<String> images = [
    'https://images.unsplash.com/photo-1718030323555-214805b7f884?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1718030323555-214805b7f884?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1718030323555-214805b7f884?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              return CustomContainerGradientAdmin(
                width: double.infinity,
                height: 160.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                      placeholder: (context, url) => ShimmerEffect(
                          width: double.infinity,
                          height: 160.h,
                          borderRaduis: 20),
                      errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 30,
                          ),
                      fit: BoxFit.fill,
                      imageUrl: images[index]),
                ),
              );
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
            children: images.map((e) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                width: 10.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.color.bluePinkLight,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
