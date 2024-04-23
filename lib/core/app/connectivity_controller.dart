import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  void init() async {
    final result = await Connectivity().checkConnectivity();
    isNetworkConnected(result);
    Connectivity().onConnectivityChanged.listen(isNetworkConnected);
  }

  bool isNetworkConnected(ConnectivityResult? result) {
    if (result == ConnectivityResult.none) {
      isConnected.value = false;
      return false;
    } else if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isConnected.value = true;
      return true;
    } else {
      return false;
    }
  }
}
