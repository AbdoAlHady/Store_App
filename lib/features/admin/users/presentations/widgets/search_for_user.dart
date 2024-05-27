import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';

class SearchForUser extends StatelessWidget {
  const SearchForUser({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormFiled(
      controller: TextEditingController(),
      keyboardType: TextInputType.emailAddress,
      hintText: 'Search for user',
      onChanged: (value) {},
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.clear,
          color: ColorsDark.blueLight,
        ),
      ),
    );
  }
}
