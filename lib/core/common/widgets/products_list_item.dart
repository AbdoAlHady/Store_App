import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/share_cubit/share_cubit.dart';
import 'package:store_app/core/app/share_cubit/share_state.dart';
import 'package:store_app/core/common/widgets/app_share_button.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_gradient_customer.dart';
import 'package:store_app/core/common/widgets/custom_favourite_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/routes/routes.dart';

import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_cubit.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_state.dart';

class ProductsListItem extends StatelessWidget {
  const ProductsListItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.categoryName,
      required this.price,
      required this.productId});
  final String imageUrl;
  final String title;
  final String categoryName;
  final num price;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productDetail, argumnets: productId);
      },
      child: CustomConatinerGradientCustomer(
        height: 250.h,
        width: 165.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Share Button
                BlocBuilder<ShareCubit, ShareState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => AppShareButton(
                        size: 25,
                        onPressed: () {
                          context.read<ShareCubit>().sendDynamicLinkProduct(
                                productId: productId,
                                title: title,
                                imageUrl: imageUrl,
                              );
                        },
                      ),
                      loading: (id) {
                        if (id == productId) {
                          return Padding(
                            padding:  EdgeInsets.only(left: 10.w),
                            child:  SizedBox(
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
                                productId: productId,
                                title: title,
                                imageUrl: imageUrl,
                              );
                        },
                      ),
                    );
                  },
                ),
                //Favorite Button,
                BlocBuilder<FavouritesCubit, FavouritesState>(
                  builder: (context, state) {
                    return CustomFavouriteButton(
                      size: 25,
                      isFavourites: context
                          .read<FavouritesCubit>()
                          .isFavourites(productId.toString()),
                      onPressed: () async {
                        await context.read<FavouritesCubit>().manageFavourites(
                              id: productId.toString(),
                              name: title,
                              image: imageUrl,
                              price: price.toString(),
                              categoryName: categoryName,
                            );
                      },
                    );
                  },
                ),
              ],
            ),
            // Show Image
            Flexible(
              child: Center(
                child: CachedNetworkImage(
                  height: 200.h,
                  width: 120.w,
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
            verticalSpace(5), // Price
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
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
