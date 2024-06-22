import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/features/customer/product_details/presetnation/bloc/product_details/product_details_bloc.dart';
import 'package:store_app/features/customer/product_details/presetnation/bloc/product_details/product_details_event.dart';
import 'package:store_app/features/customer/product_details/presetnation/bloc/product_details/product_details_state.dart';
import 'package:store_app/features/customer/product_details/presetnation/refactors/product_details_custom_painter.dart';

import '../../../../../core/common/widgets/customer_app_bar.dart';
import '../refactors/add_to_cart_button.dart';
import '../refactors/product_deatils_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.productId});
  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductDetailsBloc>()
        ..add(ProductDetailsEvent.getProductDetails(productId: productId)),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
            sucess: (product) {
              return Scaffold(
                appBar:  CustomerAppBar(title: product.title!.convertLongString()),
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
                    ),
                     ProductDeatilsBody(productModel: product,),
                  ],
                ),
                bottomNavigationBar:  AddToCartButton(
                  price: product.price!,
                ),
              );
            },
            failure: (message) => Center(
              child: Text(message),
            ),
          );
        },
      ),
    );
  }
}
