import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/customer_app_bar.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key, required this.categoryInfo});
  final ({ String categoryName, int categoryId}) categoryInfo;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomerAppBar(title: categoryInfo.categoryName),
    );
  }
}