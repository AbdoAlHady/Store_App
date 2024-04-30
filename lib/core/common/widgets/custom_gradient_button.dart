import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.width,
      this.height});
  final Widget child;
  final void Function() onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: context.color.bluePinkLight!.withOpacity(0.3),
      
      child:Container(
        width: width ?? 44.w,  
        height: height ?? 44.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
            begin: const Alignment(0.46,-0.89),
            end: const Alignment(-0.46,0.89),
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
