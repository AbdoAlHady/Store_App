import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/share_cubit/share_state.dart';
import 'package:store_app/core/common/widgets/app_share_button.dart';
import 'package:store_app/core/common/widgets/custom_favourite_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_cubit.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_state.dart';
import 'package:store_app/features/customer/products/data/models/product_details_response.dart';

import '../../../../../core/app/share_cubit/share_cubit.dart';
import '../widgets/product_image_slider.dart';

class ProductDeatilsBody extends StatelessWidget {
  const ProductDeatilsBody({super.key, required this.productModel});
  final ProductDetailsModel productModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Share and favorite buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Share Butt,,on
                BlocBuilder<ShareCubit, ShareState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => AppShareButton(
                        size: 30,
                        onPressed: () {
                          context.read<ShareCubit>().sendDynamicLinkProduct(
                                productId:
                                    int.parse(productModel.id.toString()),
                                title: productModel.title ?? '',
                                imageUrl: productModel.images.first
                                    .imageProductFormat(),
                              );
                        },
                      ),
                      loading: (id) {
                        if (id == int.parse(productModel.id.toString())) {
                          return Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: CircularProgressIndicator(
                                color: context.color.bluePinkLight,
                              ),
                            ),
                          );
                        } else {
                          return AppShareButton(
                            size: 25,
                            onPressed: () {},
                          );
                        }
                      },
                      success: () => AppShareButton(
                        size: 25,
                        onPressed: () {
                          context.read<ShareCubit>().sendDynamicLinkProduct(
                                productId:
                                    int.parse(productModel.id.toString()),
                                title: productModel.title ?? '',
                                imageUrl: productModel.images.first
                                    .imageProductFormat(),
                              );
                        },
                      ),
                    );
                  },
                ), // Favorite Button,
                BlocBuilder<FavouritesCubit, FavouritesState>(
                  builder: (context, state) {
                    return CustomFavouriteButton(
                      size: 25,
                      isFavourites: context
                          .read<FavouritesCubit>()
                          .isFavourites(productModel.id.toString()),
                      onPressed: () async {
                        await context.read<FavouritesCubit>().manageFavourites(
                              id: productModel.id.toString(),
                              name: productModel.title ?? '',
                              image: productModel.images.first
                                  .imageProductFormat(),
                              price: productModel.price.toString(),
                              categoryName: productModel.category!.name ?? '',
                            );
                      },
                    );
                  },
                ),
              ],
            ),
            verticalSpace(10),
            // Product Images
            ProductImageSlider(imagesUrl: productModel.images),
            verticalSpace(30),

            // Product Title
            TextApp(
              text: productModel.title!,
              style: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            verticalSpace(15),
            // Description
            TextApp(
              text: productModel.description!,
              style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.regular,
                  height: 1.5,
                  color: context.color.textColor),
            ),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
