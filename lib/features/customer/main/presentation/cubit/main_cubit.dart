import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/main/presentation/cubit/main_state.dart';

import '../../../../../core/enums/nav_bar_enums.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial());

  NavBarEnums currentNavBarEnum = NavBarEnums.home;

  // Select Current NavBar Icon
  void changeNavBarIcon(NavBarEnums navBarEnum) {
    if(navBarEnum == NavBarEnums.home){
      currentNavBarEnum = NavBarEnums.home;
    } else if(navBarEnum == NavBarEnums.categories){
      currentNavBarEnum = NavBarEnums.categories;
    } else if(navBarEnum == NavBarEnums.favourites){
      currentNavBarEnum = NavBarEnums.favourites;
    } else if(navBarEnum == NavBarEnums.profile){
      currentNavBarEnum = NavBarEnums.profile;
    }
    emit(MainState.bottomNavSelectedIcon(navBarEnum: navBarEnum));
  }
}
