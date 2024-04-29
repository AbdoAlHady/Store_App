import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_images.dart';

class MyImages extends ThemeExtension<MyImages> {
  final String? image;

  const MyImages({required this.image});
  @override
  ThemeExtension<MyImages> copyWith({String? image}) {
    return MyImages(image: image ?? this.image);
  }

  @override
  ThemeExtension<MyImages> lerp(
      covariant ThemeExtension<MyImages>? other, double t) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(image: image);
  }

  static const MyImages test1 = MyImages(image: AppImages.test1);
  static const MyImages test2 = MyImages(image: AppImages.test2);
}
