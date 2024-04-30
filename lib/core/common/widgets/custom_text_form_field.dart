import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class AppTextFormFiled extends StatelessWidget {
  const AppTextFormFiled(
      {super.key,
      required this.controller,
      this.hintText,
      this.validator,
      this.onChanged,
      this.filld = false,
      this.fillColor,
      this.obsecureText = false,
      this.readOnly = false,
      this.suffixIcon,
      this.prefixIcon,
      this.keyboardType,
       this.overrideValidator,
      this.hintStyle,
      this.maxLength,
      this.minLines = 1});
  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final bool filld;
  final Color? fillColor;
  final bool? obsecureText;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final bool? overrideValidator;
  final TextStyle? hintStyle;
  final int? maxLength;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: context.color.textColor,
      style: TextStyle(
          color: context.color.textColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500),
      onChanged: onChanged,
      validator: (value) {
        return validator!(value);
      },
      keyboardType: keyboardType,
      obscureText: obsecureText!,
      readOnly: readOnly,
      minLines: minLines,
      maxLength: maxLength,

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? context.textStyle.copyWith(
          color: context.color.textColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400
        ),
        errorStyle: context.textStyle.copyWith(
          color: Colors.red,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: filld,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
         
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: context.color.textFormBorder!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: context.color.textFormBorder!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color:Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color:Colors.red),
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      ),
    );
  }
}
