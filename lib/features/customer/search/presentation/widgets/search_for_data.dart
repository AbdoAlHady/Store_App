import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/styles/fonts/font_wight_helper.dart';

class SearchForData extends StatelessWidget {
  const SearchForData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(100),
        Icon( Icons.search,size: 100,color: Colors.grey.shade400,),
        verticalSpace(10),
        TextApp(text: 'Search For Data ...!', style: context.textStyle.copyWith(fontSize: 15.sp,fontWeight: FontWeightHelper.medium,color: Colors.grey.shade400)),
    
      ],
    );
  }
}