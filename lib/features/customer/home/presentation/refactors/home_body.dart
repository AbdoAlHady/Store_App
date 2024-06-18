import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_event.dart';
import 'package:store_app/features/customer/home/presentation/widgets/categories/categories_list_view.dart';

import '../widgets/banners/banner_slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<BannersBloc>().add(const BannersEvent.getAllBanners());
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
        ],
      ),
    );
  }
}
