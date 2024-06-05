import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_event.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_state.dart';

class CreateNotificationBottomSheet extends StatefulWidget {
  const CreateNotificationBottomSheet({super.key});

  @override
  State<CreateNotificationBottomSheet> createState() =>
      _CreateNotificationBottomSheetState();
}

class _CreateNotificationBottomSheetState
    extends State<CreateNotificationBottomSheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _productIdController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    _productIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextApp(
                text: 'Add Notification',
                style: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
            verticalSpace(20),
            TextApp(
              text: 'Enter The Notification Title',
              style: context.textStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            verticalSpace(10),
            AppTextFormFiled(
              controller: _titleController,
              hintText: 'Title',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Enter The Title';
                }
                return null;
              },
            ),
            verticalSpace(20),
            TextApp(
              text: 'Enter The Notification Body',
              style: context.textStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            verticalSpace(10),
            AppTextFormFiled(
              controller: _bodyController,
              hintText: 'Body',
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return 'Please Enter The Body';
                }
                return null;
              },
            ),
            verticalSpace(20),
            TextApp(
              text: 'Enter The Prouduct Id',
              style: context.textStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            verticalSpace(10),
            AppTextFormFiled(
              controller: _productIdController,
              hintText: 'Product Id',
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter The Product Id';
                }
                return null;
              },
            ),
            verticalSpace(20),
            Center(
              child:
                  BlocConsumer<CreateNotificationBloc, CreateNotificationState>(
                listener: (context, state) {
                  state.mapOrNull(success: (value) {
                    context.pop();
                    ShowToast.showToastSuccess(
                        context: context,
                        message: 'Notification Created Successfuly');
                  }, failure: (state) {
                    ShowToast.showToastError(
                        context: context, message: state.message);
                  });
                },
                builder: (context, state) {
                  return state.maybeWhen(loading: () {
                    return Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: ColorsDark.blueDark,
                        ),
                      ),
                    );
                  }, orElse: () {
                    return CustomButton(
                        onPressed: () {
                          _validateThenCreate(context);
                        },
                        text: 'Add Notification',
                        threeRadius: 10,
                        lastRadius: 10,
                        width: double.infinity,
                        backgroundColor: Colors.white,
                        textColor: ColorsDark.blueDark,
                        height: 50.h);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _validateThenCreate(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<CreateNotificationBloc>().add(
            CreateNotificationEvent.createNewNotification(
              AddNotificationModel(
                createdAt: DateTime.now(),
                title: _titleController.text.trim(),
                body: _bodyController.text.trim(),
                productId: _productIdController.text,
              ),
            ),
          );
    }
  }
}
