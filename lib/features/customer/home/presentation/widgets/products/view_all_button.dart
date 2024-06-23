import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_state.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProductsBloc, HomeProductsState>(
      builder: (context, state) {
        if (context.read<HomeProductsBloc>().isProductListLessThan10 == true) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomButton(
                onPressed: () {
                  context.pushNamed(Routes.viewAllProductsScreen);
                },
                lastRadius: 10,
                threeRadius: 10,
                backgroundColor: context.color.bluePinkLight,
                text: context.translator(LangKeys.viewAll),
                width: MediaQuery.sizeOf(context).width,
                height: 50.h),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
