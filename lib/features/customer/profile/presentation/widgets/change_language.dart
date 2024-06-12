import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/app/app_cubit/app_state.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/custom_dialog.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/app_localizations.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Row(
          children: [
            // Image ,
            SvgPicture.asset(
              AppImages.language,
              color: context.color.textColor,
            ),
            horizontalSpace(10),

            // Title,
            TextApp(
              text: context.translator(LangKeys.languageTilte),
              style: context.textStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeightHelper.regular,
              ),
            ),
            const Spacer(),

            // Language Button
            InkWell(
              onTap: () {
                // Dialog
                CustomDialog.twoButtonDialog(
                    context: context,
                    textBody: context.translator(LangKeys.changeToTheLanguage),
                    textButton1: context.translator(LangKeys.sure),
                    textButton2: context.translator(LangKeys.cancel),
                    onPressed: () {
                      _selectLanguageButton(context);
                    },
                    isLoading: false);
              },
              child: Row(
                children: [
                  TextApp(
                    text: context.translator(LangKeys.langCode),
                    style: context.textStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeightHelper.regular,
                    ),
                  ),
                  horizontalSpace(5),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: context.color.textColor,
                    size: 15,
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _selectLanguageButton(BuildContext context) {
    if (AppLocalizations.of(context)!.isEnLocale) {
      context.read<AppCubit>().toArabic();
    } else {
      context.read<AppCubit>().toEnglish();
    }
    context.pop();
  }
}
