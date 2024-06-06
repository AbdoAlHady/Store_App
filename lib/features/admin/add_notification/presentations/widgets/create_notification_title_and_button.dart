import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/bootm_sheet/custom_btuttom_sheet.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/widgets/create_notification_bottom_sheet.dart';

import '../../../../../core/styles/colors/colors_dark.dart';
import '../bloc/get_all_notifications_admin/get_all_notifications_admin_event.dart';

class CreateNotificationTitleAndButton extends StatelessWidget {
  const CreateNotificationTitleAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextApp(
          text: 'Notifications',
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
          ),
        ),

        // Button
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showCustomModelSheet(
                context: context,
                whenComplet: () {
                  context.read<GetAllNotificationsAdminBloc>().add(
                        const GetAllNotificationsAdminEvent
                            .getAllAdminNotifications(isLoading: false),
                      );
                },
                child: BlocProvider(
                  create: (context) => CreateNotificationBloc(),
                  child: const CreateNotificationBottomSheet(),
                ));
          },
          text: 'Add',
          backgroundColor: ColorsDark.blueDark,
          width: 90.w,
          height: 35.h,
          lastRadius: 10,
          threeRadius: 10,
        ),
      ],
    );
  }
}
