import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/favourites/favourites_screen.dart';
import 'package:store_app/features/customer/home/presentation/screens/home_screen.dart';
import 'package:store_app/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:store_app/features/customer/main/presentation/cubit/main_state.dart';

import '../../../../../core/enums/nav_bar_enums.dart';
import '../../../categories/presentation/screens/categories_screen.dart';
import '../../../profile/presentation/screens/profile_screen.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        var cubit = context.read<MainCubit>();
        if (cubit.currentNavBarEnum == NavBarEnums.home) {
          return const HomeScreen();
        } else if (cubit.currentNavBarEnum == NavBarEnums.categories) {
          return const CategoriesScreen();
        } else if (cubit.currentNavBarEnum == NavBarEnums.favourites) {
          return const FavouritesScreen();
        } else {
          return const ProfileScreen();
        }
      },
    );
  }
}
