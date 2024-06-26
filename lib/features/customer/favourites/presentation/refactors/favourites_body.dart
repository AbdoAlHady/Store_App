import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/products_list_item.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_cubit.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_state.dart';

class FavouritesBody extends StatelessWidget {
  const FavouritesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: BlocBuilder<FavouritesCubit, FavouritesState>(
        builder: (context, state) {
          final productsList = context.read<FavouritesCubit>().getFavourites();
          if (context.read<FavouritesCubit>().getFavourites().isEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: context.color.textColor,
                  size: 150,
                ),
                TextApp(text: 'Choose Your Favourites Product..!', style: context.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ))
              ],
            );
          }
          return GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: productsList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Number of cloums
              crossAxisSpacing: 8, // Spacing between colums
              mainAxisSpacing: 15, //Spacing between rows
              childAspectRatio: 165 / 250,
            ),
            itemBuilder: (context, index) {
              return ProductsListItem(
                  imageUrl: productsList[index].image,
                  title: productsList[index].name,
                  categoryName: productsList[index].categoryName,
                  price: double.parse(productsList[index].price),
                  productId: int.parse(productsList[index].id));
            },
          );
        },
      ),
    );
  }
}
