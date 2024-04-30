import 'package:flutter/material.dart';
import 'package:store_app/core/theme/color_extension.dart';
import 'package:store_app/core/theme/assets_extension.dart';

import '../language/app_localizations.dart';

extension ContextExt on BuildContext {
  // Color
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  // Image
  MyAssets get image => Theme.of(this).extension<MyAssets>()!;
  // language
  String translator(String key) {
    return AppLocalizations.of(this)!.translate(key).toString();
  }
  // text
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  // Navigator
  Future<void> pushNamed(String routeName, {Object? argumnets}) =>
      Navigator.of(this).pushNamed(routeName, arguments: argumnets);
  Future<void> pushReplacementNamed(String routeName, {Object? argumnets}) =>
      Navigator.of(this).pushReplacementNamed(routeName, arguments: argumnets);
  Future<void> pushNamedAndRemoveUntil(String routeName, {Object? argumnets}) =>
      Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false,
          arguments: argumnets);
  voidpop() => Navigator.of(this).pop();
}
