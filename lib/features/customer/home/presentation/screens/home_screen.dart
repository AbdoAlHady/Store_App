import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_event.dart';

import '../bloc/banners/banners_bloc.dart';
import '../refactors/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void screollUp() {
    _scrollController.animateTo(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Banners Bloc
        BlocProvider(
            create: (context) =>
                getIt<BannersBloc>()..add(const BannersEvent.getAllBanners())),
        // Home Categories Bloc,
        BlocProvider(
          create: (context) => getIt<HomeCategoriesBloc>()
            ..add(
              const HomeCategoriesEvent.getAllCategories(),
            ),
        ),
        // Home Products Bloc,
         BlocProvider(
          create: (context) => getIt<HomeProductsBloc>()
            ..add(
              const HomeProductsEvent.getAllProducts(),
            ),
        ),
      ],
      child: Stack(
        children: [
          // Home Body
          HomeBody(
            scrollController: _scrollController,
          ),
          CustomFadeInRight(
            duration: 200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: FloatingActionButton(
                  backgroundColor: context.color.bluePinkLight,
                  onPressed: screollUp,
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}