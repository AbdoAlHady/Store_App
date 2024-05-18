import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_drop_down.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/create_product_image.dart';

import '../../../../../core/common/widgets/text_app.dart';
import '../../../../../core/helper/spacing.dart';

class CreateProductBottomSheet extends StatefulWidget {
  const CreateProductBottomSheet({super.key});

  @override
  State<CreateProductBottomSheet> createState() =>
      _CreateProductBottomSheetState();
}

class _CreateProductBottomSheetState extends State<CreateProductBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String categoryName = '';

  @override
  void dispose() {
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      width: double.infinity,
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Craete Product Text,
              Center(
                child: TextApp(
                  text: 'Create Prodcut',
                  style: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ),
              verticalSpace(20),
              // Craete Product Image
              TextApp(
                text: 'Create a photos',
                style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
              verticalSpace(15),
              const CreateProductImage(),
              verticalSpace(15),

              // Title
              TextApp(
                text: 'Title',
                style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
              verticalSpace(10),
              AppTextFormFiled(
                controller: _titleController,
                hintText: 'Title',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Title ';
                  }
                  return null;
                },
              ),
              verticalSpace(15),
              // Price
              TextApp(
                text: 'Price',
                style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
              verticalSpace(10),
              AppTextFormFiled(
                controller: _priceController,
                hintText: 'Price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Selected Your Product Price ';
                  }
                  return null;
                },
              ),
              verticalSpace(15),
              // Description
              TextApp(
                text: 'Description',
                style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
              verticalSpace(10),
              AppTextFormFiled(
                controller: _descriptionController,
                hintText: 'Description',
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Description ';
                  }
                  return null;
                },
              ),
              verticalSpace(15),
              // Description
              TextApp(
                text: 'Category',
                style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
              verticalSpace(10),
              CustomDropDown(
                items: const [],
                hintText: 'Select Category', 
                onChanged: (String? value) {
                  setState(() {
                    categoryName = value!;
                  });
                },
                value: categoryName,
              ),

              verticalSpace(15),
              // Update Button,
              CustomButton(
                onPressed: () {},
                text: 'Create Product',
                width: double.infinity,
                height: 50,
                lastRadius: 10,
                threeRadius: 10,
                backgroundColor: Colors.white,
                textColor: ColorsDark.blueDark,
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
