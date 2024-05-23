import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_drop_down.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_state.dart';
import 'package:store_app/features/admin/add_products/data/models/create_product_request_body.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/create_product_bloc/create_product_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/create_product_bloc/create_product_state.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/create_product_image.dart';

import '../../../../../core/common/widgets/text_app.dart';
import '../../../../../core/helper/spacing.dart';
import '../bloc/create_product_bloc/create_product_event.dart';

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
  String? categoryName;
  double? categoryId;

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
              BlocBuilder<GetAllAdminCategoriesBloc,
                  GetAllAdminCategoriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (catgeory) {
                      return CustomCreateDropDown(
                        hintText: 'Select a Category',
                        items: catgeory.categoryDropdownList,
                        onChanged: (value) {
                           setState(() {
                            categoryName = value;

                            final catgeoryIdString = catgeory
                                .categoryList
                                .firstWhere((e) => e.name == value)
                                .id!;
                            categoryId = double.parse(catgeoryIdString);
                          });
                        },
                        value: categoryName,
                      );
                    },
                    orElse: () {
                      return CustomCreateDropDown(
                        hintText: 'Select a Category',
                        items: const [''],
                        onChanged: (value) {},
                        value: '',
                      );
                    },
                  );
                },
              ),

              verticalSpace(15),
              // Update Button,
              BlocConsumer<CreateProductBloc, CreateProductState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      context.pop();
                      ShowToast.showToastSuccess(
                          context: context,
                          message: 'Product Created Successfully');
                    },
                    failure: (message) {
                      ShowToast.showToastError(
                          context: context, message: message);
                    },
                  );
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
                      text: 'Create Product',
                      width: double.infinity,
                      height: 50,
                      lastRadius: 10,
                      threeRadius: 10,
                      backgroundColor: Colors.white,
                      textColor: ColorsDark.blueDark,
                    );
                  });
                },
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }

  void _validateThenCreate(BuildContext context) {
    final indexEmptyImage = context
        .read<UploadImageCubit>()
        .images
        .indexWhere((element) => element.isNotEmpty);
    if (!formKey.currentState!.validate() ||
        categoryName == null ||
        indexEmptyImage == -1) {
      if (indexEmptyImage == -1) {
        ShowToast.showToastError(
            context: context, message: 'Please Select Product Image');
      } else if (categoryName == null) {
        ShowToast.showToastError(
            context: context, message: 'Please Select Category');
      }
    } else {
      context.read<CreateProductBloc>().add(
            CreateProductEvent.createNewProductEvent(
              body: CreateProductRequestBody(
                categoryId: categoryId ?? 0,
                title: _titleController.text,
                price: double.parse(_priceController.text),
                description: _descriptionController.text,
                images: context.read<UploadImageCubit>().images,
              ),
            ),
          );
    }
  }
}
