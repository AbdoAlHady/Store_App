import 'package:flutter/material.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/colors/colors_light.dart';
import 'package:store_app/core/theme/color_extension.dart';
import 'package:store_app/core/theme/image_extension.dart';

class AppTheme {
  static ThemeData lightheme = ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    brightness: Brightness.light,
    useMaterial3: true,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyImages.test1],
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyImages.test2],
  );
}
