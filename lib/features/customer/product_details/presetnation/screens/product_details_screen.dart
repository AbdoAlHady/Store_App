import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/customer/product_details/presetnation/refactors/product_details_custom_painter.dart';

import '../../../../../core/common/widgets/customer_app_bar.dart';
import '../refactors/add_to_cart_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.productId});
  final int productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomerAppBar(title: 'Title'),
      body: Stack(
        children: [
          CustomPaint(
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).height),
            painter: ProductDetailsCustomPainter(
              gradient: LinearGradient(
                colors: [
                  context.color.bluePinkLight!,
                  context.color.bluePinkDark!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const AddToCartButton(
        price: 20.0,
      ),
    );
  }
}
