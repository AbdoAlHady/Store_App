import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class IconNavBar extends StatelessWidget {
  const IconNavBar({super.key, required this.onTap, required this.icon, required this.isSelected});
  final VoidCallback onTap;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(icon,
      color: isSelected ? context.color.navBarSelectedTab : Colors.grey,
      height: 25.h,
      ).animate(target: isSelected ? 1 : 0,).scaleXY(end: 1.2),
    );
  }
}
