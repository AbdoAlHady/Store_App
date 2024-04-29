import 'package:flutter/material.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  final Color mainColor;

  const MyColors({required this.mainColor});

  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(mainColor: mainColor ?? this.mainColor);
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(mainColor: mainColor);
  }

  static const dark = MyColors(mainColor: ColorsDark.mainColor);
  static const light = MyColors(mainColor: ColorsLight.mainColor);
}
