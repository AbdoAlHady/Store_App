import 'package:flutter/material.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';

class CustomContainerGradientAdmin extends StatelessWidget {
  const CustomContainerGradientAdmin(
      {super.key,
      required this.width,
      required this.height,
      required this.child});
  final double width;
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: const Alignment(0.36, 0.27),
            end: const Alignment(0.58, 0.85),
            colors: [
              ColorsDark.black1.withOpacity(0.8),
              ColorsDark.black2.withOpacity(0.8),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: ColorsDark.black1.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 2,
            ),
          ]),
      child: child,
    );
  }
}
