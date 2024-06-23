import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/customer/search/presentation/widgets/search_for_data.dart';
import '../widgets/filter_buttons.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
      child:  const Column(
        children: [
          // Filter Buttons 
          FilterButtons(),
         

        ],
      ),
    );
  }
}

