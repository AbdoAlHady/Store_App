import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/bootm_sheet/custom_btuttom_sheet.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_event.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/update_product/update_product_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/delete_product_button.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/update_product_buttom_sheet.dart';

import '../../../add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_event.dart';

class ProductAdminItem extends StatelessWidget {
  const ProductAdminItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.categoryName,
      required this.price,
      required this.productId,
      required this.images,
      required this.descripation,
      required this.categoryId});
  final String imageUrl;
  final String title;
  final String categoryName;
  final String price;
  final String productId;
  final List<String> images;
  final String descripation;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return CustomContainerGradientAdmin(
      height: 250.h,
      width: 165.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Delete Button,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: DeleteProductButton(
                  productId: productId,
                ),
              ),
              //Update Button
              IconButton(
                onPressed: () {
                  CustomBottomSheet.showCustomModelSheet(
                    context: context,
                    whenComplet: () {
                      context.read<GetAllAdminProductsBloc>().add(
                          const GetAllAdminProductsEvent.getAdminProducts(
                              isLoading: false));
                    },
                    child: MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => getIt<UpdateProductBloc>(),
                        ),
                        BlocProvider(
                          create: (context) => getIt<UploadImageCubit>(),
                        ),
                        BlocProvider(
                          create: (context) =>
                              getIt<GetAllAdminCategoriesBloc>()
                                ..add(const GetAllAdminCategoriesEvent
                                    .getAllAdminCategories(isLoading: false)),
                        ),
                      ],
                      child: UpdateProductButtomSheet(
                        images: images,
                        categoryName: categoryName,
                        price: price,
                        descripation: descripation,
                        title: title,
                        productId: productId,
                        categoryId: categoryId,
                      ),
                    ),
                  );
                },
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          // Show Image
          Flexible(
            child: Center(
              child: CachedNetworkImage(
                height: 200.h,
                width: 120.w,
                fit: BoxFit.contain,
                placeholder: (context, url) => ShimmerEffect(
                  width: 120.w,
                  height: 200.h,
                ),
                imageUrl: imageUrl.imageProductFormat(),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ),
          verticalSpace(10),
          // title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: title,
              style: context.textStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeightHelper.bold,
              ),
              maxLines: 1,
            ),
          ),
          verticalSpace(5),
          // Category Name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: categoryName,
              style: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
              maxLines: 1,
            ),
          ),
          verticalSpace(5),
          // Price
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: '\$ $price',
              style: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
          ),
          verticalSpace(10)
        ],
      ),
    );
  }
}
