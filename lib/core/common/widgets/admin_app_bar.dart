import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_manager.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdminAppBar(
      {super.key,
      required this.isMain,
      required this.backgroundColor,
      required this.title});
  final bool isMain;
  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      title: TextApp(
        text: title,
        style: context.textStyle.copyWith(
          fontSize: 18.sp,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      leading: isMain
          ? IconButton(
              onPressed: () {
                ZoomDrawer.of(context)!.toggle();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}
