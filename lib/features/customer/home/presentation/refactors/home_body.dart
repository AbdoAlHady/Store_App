import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          // Banner
          SliverToBoxAdapter(
              child: ListView.separated( 
                  shrinkWrap: true,
                  itemCount: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: 400,
                      color: Colors.red,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                        height: 5,
                      )))
          // Categories

          // Products
        ],
      ),
    );
  }
}
