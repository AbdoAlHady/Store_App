import 'package:flutter/material.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';

class CustomBottomSheet {
  const CustomBottomSheet._();
  static const CustomBottomSheet _instance = CustomBottomSheet._();
  factory CustomBottomSheet() => _instance;

  static void showCustomModelSheet(
          {required BuildContext context,
          required Widget child,
          Color? background,
          VoidCallback? whenComplet}) =>
      showModalBottomSheet<dynamic>(
        context: context,
        builder: (context) => SingleChildScrollView(
            child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        )),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: background ?? ColorsDark.blueDark,
      ).whenComplete(whenComplet??(){});
}
