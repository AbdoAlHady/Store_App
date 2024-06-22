import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class AppShareButton extends StatelessWidget {
  const AppShareButton({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.share,
        color: context.color.textColor,
        size: size,
      ),
    );
  }
}
