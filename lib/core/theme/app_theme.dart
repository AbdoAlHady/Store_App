import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/colors/colors_light.dart';
import 'package:store_app/core/styles/fonts/font_manager.dart';
import 'package:store_app/core/theme/color_extension.dart';
import 'package:store_app/core/theme/assets_extension.dart';

class AppTheme {
  static ThemeData lightheme = ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    brightness: Brightness.light,
    useMaterial3: true,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14.sp,
        color: ColorsLight.black,
        fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14.sp,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      ),
    ),
  );
}
