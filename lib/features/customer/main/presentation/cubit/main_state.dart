

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/nav_bar_enums.dart';
part 'main_state.freezed.dart';
@Freezed()
class MainState with _$MainState {
  const factory MainState.initial() = _InitialState;
  const factory MainState.bottomNavSelectedIcon({required NavBarEnums navBarEnum}) = BottomNavSelectedIconState;
}
