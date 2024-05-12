import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/add_category_item.dart';

import '../widgets/create_category_button.dart';

class AddCategoriesBody extends StatelessWidget {
  const AddCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          // Create Categor Buuton,
          const CreateCategoryButton(),
          verticalSpace(20.h),
          // Categories List
          const AddCategoryItem(
            name: 'MacBook',
            imageUrl:
                'https://cdn.thewirecutter.com/wp-content/media/2023/11/guidetoholdiaybuyingmacbook-2048px-9765-3x2-1.jpg?auto=webp&quality=75&crop=3:2&width=1024',
            categoryId: '1',
          ),
        ],
      ),
    );
  }
}
