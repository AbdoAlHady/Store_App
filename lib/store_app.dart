import 'package:flutter/material.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env_variables.dart';
import 'package:store_app/core/widgets/no_network_screen/no_network_screen.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.depugMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context, child) {
              return Scaffold(
                body: Builder(builder: (context) {
                  ConnectivityController.instance.init();
                  return child!;
                }),
              );
            },
            home: Scaffold(
                appBar: AppBar(
              title: const Text('Store App'),
            )),
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
