import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // USER PROFILE IMAGE
        ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: CachedNetworkImage(
            height: 80.h,
            width: 80.w,
            imageUrl:
                'https://images.unsplash.com/photo-1717819520943-2f20d73d00c9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              color: Colors.red,
              size: 70,
            ),
          ),
        ),
        verticalSpace(7),

        // User Name,
        TextApp(
          text: 'abdo'.toLowerCase().toCaptalized(),
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        verticalSpace(7),
        // User Email,
        TextApp(
          text: 'abdo.agiry90@gmail.com',
          style: context.textStyle.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
      ],
    );
  }
}
