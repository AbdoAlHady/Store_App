import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class CustomFavouriteButton extends StatelessWidget {
  const CustomFavouriteButton({super.key, required this.size, required this.isFavourites, required this.onPressed});
  final double size;
  final bool isFavourites;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
             isFavourites? Icons.favorite:  Icons.favorite_outline,
        color:isFavourites?context.color.bluePinkLight :  context.color.textColor,
        size: size,
      ),
    );
  }
} 
