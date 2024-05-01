import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.changeThemeModeState({required bool isDark}) =
      ChangeThemeModeState;
  const factory AppState.changeAppLanguage({required Locale locale}) =
      ChangeAppLanguageState;
}
