import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_state.dart';
import 'package:store_app/features/customer/profile/presentation/widgets/user_info_shimmer_loading.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.when(
            loading: () {
              return const UserInfoShimmerLoading();
            },
            success: (userModel) {
              return Column(
                children: [
                  // USER PROFILE IMAGE
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: CachedNetworkImage(
                      height: 80.h,
                      width: 80.w,
                      imageUrl:
                          userModel.userImage??'',
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
                    text: userModel.userName!.toLowerCase().toCaptalized(),
                    style: context.textStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                  verticalSpace(7),
                  // User Email,
                  TextApp(
                    text: userModel.userEmail!.toLowerCase(),
                    style: context.textStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeightHelper.regular,
                    ),
                  ),
                ],
              );
            },
            error: Text.new);
      },
    );
  }
}
