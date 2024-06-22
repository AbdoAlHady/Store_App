import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/customer_app_bar.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';

class ViewAllProductsScreen extends StatelessWidget {
  const ViewAllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomerAppBar(title: context.translator(LangKeys.viewAll)),
    );
  }
}