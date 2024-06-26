import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/app/app_cubit/app_state.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env_variables.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/language/app_localizations_setup.dart';
import 'package:store_app/core/routes/app_router.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/theme/app_theme.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_cubit.dart';

import 'core/helper/shared_prefrences_keys.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return MultiBlocProvider(
            providers:[
              BlocProvider(
                create: (context) =>getIt<AppCubit>()
              ..changeAppThemeMode(
                  sharedMode:
                      CacheHelper().getData(key: SharedPrefKeys.themeMode))
              ..getSavedLanguage(),

            
              ),
              BlocProvider(create: (context) => getIt<FavouritesCubit>(),)
            ], 
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              builder: (context, child) => BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: EnvVariables.instance.depugMode,
                    theme:
                        cubit.isDark ? AppTheme.darkTheme : AppTheme.lighTheme,
                    navigatorKey: getIt<GlobalKey<NavigatorState>>(),
                    locale: Locale(cubit.langCode),
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    builder: (context, child) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(builder: (context) {
                            ConnectivityController.instance.init();
                            return child!;
                          }),
                        ),
                      );
                    },
                    onGenerateRoute: AppRouter().onGenerateRoute,
                    initialRoute: CacheHelper()
                                .getData(key: SharedPrefKeys.accessToken) !=
                            null
                        ? CacheHelper().getData(key: SharedPrefKeys.userRole) ==
                                'admin'
                            ? Routes.homeAdmin
                            : Routes.mainScreen
                        : Routes.loginScreen,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.depugMode,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
