import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/product_details/presetnation/widgets/product_image_slider_item.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key, required this.imagesUrl});
  final List<String> imagesUrl;

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 500,
      child: Column(
        children: [
          // Slider
          CarouselSlider.builder(
            itemCount: widget.imagesUrl.length,
            itemBuilder: (context, index, realIndex) {
              return ProductImageSliderItem(
                image: widget.imagesUrl[index],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              height: 250.h,
              reverse: true,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          verticalSpace(10),
          // Dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imagesUrl.asMap().entries.map((e) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                width: 10.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == e.key.round()
                      ? context.color.bluePinkLight
                      : Colors.grey,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
