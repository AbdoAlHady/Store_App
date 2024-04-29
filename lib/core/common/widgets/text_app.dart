import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp(
      {super.key,
      required this.text,
      required this.style,
      this.textAlign,
      this.overflow,
      this.maxLines = 1});
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
