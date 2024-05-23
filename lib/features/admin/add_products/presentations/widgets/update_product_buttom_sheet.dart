import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_state.dart';
import 'package:store_app/features/admin/add_products/data/models/update_product_request_body.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/update_product/update_product_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/update_product/update_product_event.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/update_product/update_product_state.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/update_product_image.dart';

import '../../../../../core/common/widgets/custom_drop_down.dart';

class UpdateProductButtomSheet extends StatefulWidget {
  const UpdateProductButtomSheet(
      {super.key,
      required this.images,
      required this.categoryName,
      required this.price,
      required this.descripation,
      required this.title,
      required this.productId,
      required this.categoryId});
  final List<String> images;
  final String categoryName;
  final String price;
  final String descripation;
  final String title;
  final String productId;
  final String categoryId;

  @override
  State<UpdateProductButtomSheet> createState() =>
      _UpdateProductButtomSheetState();
}

class _UpdateProductButtomSheetState extends State<UpdateProductButtomSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? categoryName;
  double? categoryId;

  @override
  void initState() {
    _titleController.text = widget.title;
    _priceController.text = widget.price;
    _descriptionController.text = widget.descripation;
    categoryName = widget.categoryName;
    categoryId = double.parse(widget.categoryId);

    super.initState();
  }

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
              // Update Product Text,
              Center(
                child: TextApp(
                  text: 'Update Prodcut',
                  style: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ),
              verticalSpace(20),
              // Update Product Image
              TextApp(
                text: 'Update a photos',
                style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
              verticalSpace(15),
              UpdateProductImage(images: widget.images),
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
                    success: (categoryResponse) {
                      return CustomCreateDropDown(
                        items: categoryResponse.categoryDropdownList,
                        hintText: '',
                        onChanged: (String? value) {
                          setState(() {
                            categoryName = value!;
                            final categoryStringId = categoryResponse
                                .categoryList
                                .where((element) => element.name == value)
                                .first
                                .id;
                            categoryId = double.parse(categoryStringId!);
                          });
                        },
                        value: categoryName,
                      );
                    },
                    orElse: () {
                      return CustomCreateDropDown(
                        items: const [''],
                        hintText: '',
                        onChanged: (String? value) {},
                        value: '',
                      );
                    },
                  );
                },
              ),

              verticalSpace(15),
              // Update Button,
              BlocConsumer<UpdateProductBloc, UpdateProductState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      Navigator.pop(context);
                      ShowToast.showToastSuccess(
                          context: context,
                          message: 'Product Updated Successfully');
                    },
                    failure: (message) {
                      ShowToast.showToastError(
                          context: context, message: message);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () {
                      return Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorsDark.blueDark,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return CustomButton(
                        onPressed: () {
                          _validateThenUpdate(context);
                        },
                        text: 'Update Product',
                        width: double.infinity,
                        height: 50,
                        lastRadius: 10,
                        threeRadius: 10,
                        backgroundColor: Colors.white,
                        textColor: ColorsDark.blueDark,
                      );
                    },
                  );
                },
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }

  void _validateThenUpdate(BuildContext context) {
    final cubit = context.read<UploadImageCubit>();
    if (formKey.currentState!.validate()) {
      context.read<UpdateProductBloc>().add(UpdateProductEvent.updateProduct(
          UpdateProductRequestBody(
              id: widget.productId,
              title: _titleController.text,
              description: _descriptionController.text,
              price: double.parse(_priceController.text),
              images: cubit.updateImages.isEmpty
                  ? widget.images
                  : cubit.updateImages,
              categoryId: categoryId)));
    }
  }
}
