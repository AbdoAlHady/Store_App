import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<void>pushNamed(String routeName,{Object? argumnets}) => Navigator.of(this).pushNamed(routeName,arguments: argumnets);
  Future<void>pushReplacementNamed(String routeName,{Object? argumnets}) => Navigator.of(this).pushReplacementNamed(routeName,arguments: argumnets);
  Future<void>pushNamedAndRemoveUntil(String routeName,{Object? argumnets}) => Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false,arguments: argumnets);
  voidpop() => Navigator.of(this).pop();
}
