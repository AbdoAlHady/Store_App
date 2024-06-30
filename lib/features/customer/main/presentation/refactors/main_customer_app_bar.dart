import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/enums/nav_bar_enums.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:store_app/features/customer/main/presentation/cubit/main_state.dart';

class MainCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MainCustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        backgroundColor: context.color.mainColor,
        elevation: 0,
        title: BlocBuilder<MainCubit, MainState>(builder: (context, state) {
          var cubit = context.read<MainCubit>();
          if (cubit.currentNavBarEnum == NavBarEnums.home) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFadeInRight(
                  duration: 800,
                  child: TextApp(
                    text: context.translator(LangKeys.chooseProducts),
                    style: context.textStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.textColor,
                    ),
                  ),
                ),
                CustomFadeInLeft(
                  duration: 800,
                  child: CustomGradientButton(
                      child: Center(
                        child: SvgPicture.asset(AppImages.search),
                      ),
                      onPressed: () {
                        context.pushNamed(Routes.searchScreen);
                      }),
                )
              ],
            );
          } else if (cubit.currentNavBarEnum == NavBarEnums.favourites) {
            return CustomFadeInRight(
              duration: 800,
              child: Center(
                child: TextApp(
                  textAlign: TextAlign.center,
                  text: 'Your Favourites',
                  style: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.textColor,
                  ),
                ),
              ),
            );
          } else if (cubit.currentNavBarEnum == NavBarEnums.notifications) {
            return CustomFadeInRight(
              duration: 800,
              child: Center(
                child: TextApp(
                  textAlign: TextAlign.center,
                  text: 'Notifications',
                  style: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.textColor,
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        }));
  }

  @override
  Size get preferredSize => Size(double.infinity, 70.h);
}
