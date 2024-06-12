import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_event.dart';

import '../widgets/banner_slider.dart';

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
        slivers: const [
          // Banner
          SliverToBoxAdapter(child: BannerSlider()),

          // Categories

          // Products
        ],
      ),
    );
  }
}
