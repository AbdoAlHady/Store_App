import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/app_cubit/app_state.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';

import '../../helper/cahec_helper.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  bool isDark = true;
  String langCode='en'; 

  // Theme Mode
  Future<void> changeAppThemeMode({bool? sharedMode}) async{
     debugPrint('on preesed dark mode button');
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.changeThemeModeState(isDark: isDark));
    }else{
      isDark = !isDark;
      await CacheHelper().saveData(key: SharedPrefKeys.themeMode, value: isDark);
      emit(AppState.changeThemeModeState(isDark: isDark));
    }
    
  }

  // App Language
  Future<void>getSavedLanguage()async{
    final result= await CacheHelper().containsKey(key: SharedPrefKeys.appLanguage) ? CacheHelper().getData(key: SharedPrefKeys.appLanguage) : 'en';
    langCode=result.toString();
    emit(AppState.changeAppLanguage(locale: Locale(langCode)));
  }

  void _changeLanguage(String code)async{
    langCode=code;
    await CacheHelper().saveData(key: SharedPrefKeys.appLanguage, value: langCode);
    emit(AppState.changeAppLanguage(locale: Locale(langCode)));
  }

  void toArabic()=>_changeLanguage('ar');

  void toEnglish()=>_changeLanguage('en');
}
