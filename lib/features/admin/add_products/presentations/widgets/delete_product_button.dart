import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_event.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_state.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_event.dart';

class DeleteProductButton extends StatelessWidget {
  const DeleteProductButton({super.key, required this.productId});
  final String productId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteProductBloc, DeleteProductState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (value) {
            context.read<GetAllAdminProductsBloc>().add(const GetAllAdminProductsEvent.getAdminProducts(isLoading: false));
            ShowToast.showToastSuccess(context: context, message: 'Product Deleted Successfully');
          },
          failure: (message) {
            ShowToast.showToastError(context: context, message: message.message);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(loading: (id) {
          if (productId == id) {
            return SizedBox(
              height: 15.h,
              width: 15.w,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          }
          return const Icon(
            Icons.delete,
            color: Colors.red,
            size: 25,
          );
        }, orElse: () {
          return IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              context.read<DeleteProductBloc>().add(
                  DeleteProductEvent.deleteProduct(productId: productId));
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
              size: 25,
            ),
          );
        });
      },
    );
  }
}
