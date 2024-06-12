import 'package:flutter/material.dart';

import '../widgets/banner_slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
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
