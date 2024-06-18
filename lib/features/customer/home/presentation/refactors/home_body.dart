import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_event.dart';
import 'package:store_app/features/customer/home/presentation/widgets/categories/categories_list_view.dart';

import '../widgets/banners/banner_slider.dart';
import '../widgets/products/products_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // Banner Bloc
        context.read<BannersBloc>().add(const BannersEvent.getAllBanners());
        // Home Categories Bloc
        context.read<HomeCategoriesBloc>().add(const HomeCategoriesEvent.getAllCategories());
      },
      child: CustomScrollView(
        controller: scrollController,
        slivers:  [
          // Banner
          const SliverToBoxAdapter(child:  BannerSlider()),
          SliverToBoxAdapter(child: verticalSpace(10)),

          // Categories
          const SliverToBoxAdapter(child: CategoriesListView()),

          // Products
          const SliverToBoxAdapter(child: ProductsListView()),
          SliverToBoxAdapter(child: verticalSpace(20)),

          // All Product Button
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(onPressed: () {
                
              }, 
              lastRadius: 10,
              threeRadius: 10,
              backgroundColor: context.color.bluePinkDark,
              text: context.translator(LangKeys.viewAll), width: MediaQuery.sizeOf(context).width, height: 50.h),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(60)),
          
        ],
      ),
    );
  }
}
