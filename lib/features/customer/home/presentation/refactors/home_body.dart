import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_event.dart';
import 'package:store_app/features/customer/home/presentation/widgets/categories/categories_list_view.dart';
import 'package:store_app/features/customer/home/presentation/widgets/products/view_all_button.dart';
import '../bloc/home_products/home_products_bloc.dart';
import '../widgets/banners/banner_slider.dart';
import '../widgets/products/products_list.dart';

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
        // Home Products Bloc
        context.read<HomeProductsBloc>().add( const HomeProductsEvent.getAllProducts());
      },
      child: CustomScrollView(
        controller: scrollController,
        slivers:  [
          // Banner
          const SliverToBoxAdapter(child:  BannerSlider()),
          SliverToBoxAdapter(child: verticalSpace(10)),

          // Categories
          const SliverToBoxAdapter(child: CategoriesListView()),

          // Products,
          const SliverToBoxAdapter(child: ProductsList()),
          SliverToBoxAdapter(child: verticalSpace(20)),

          // All Product Button
          const SliverToBoxAdapter(
            child: ViewAllButton(),
          ),
          SliverToBoxAdapter(child: verticalSpace(65)),
          
        ],
      ),
    );
  }
}
