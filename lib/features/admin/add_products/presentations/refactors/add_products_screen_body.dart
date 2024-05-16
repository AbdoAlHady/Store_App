import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';

import '../screens/add_product_button.dart';
import '../widgets/product_admin_item.dart';

class AddProductScreenBody extends StatelessWidget {
  const AddProductScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          const AddProductButton(),
          verticalSpace(30),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
              
              },
              child: CustomScrollView(
                slivers: [
                  SliverGrid.builder(
                    itemCount: 10,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 165/250,
                    ),
                    itemBuilder: (context, index) {
                      return const ProductAdminItem(
                        imageUrl:
                            'https://images.unsplash.com/photo-1617471346061-5d329ab9c574?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        title: 'MacBook',
                        price: '300',
                        categoryName: 'Apple',
                      );
                    },
                  ),
                  SliverToBoxAdapter(
                    child: verticalSpace(30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
