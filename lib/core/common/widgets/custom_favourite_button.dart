import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class CustomFavouriteButton extends StatelessWidget {
  const CustomFavouriteButton({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.favorite_outline,
        color: context.color.textColor,
        size: size,
      ),
    );
  }
}
