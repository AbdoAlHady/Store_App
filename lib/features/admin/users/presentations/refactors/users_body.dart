import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';

import '../widgets/search_for_user.dart';
import '../widgets/tabel_for_users.dart';

class UsersAdminBody extends StatelessWidget {
  const UsersAdminBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        children: [
          // Search For Users,
          const SearchForUser(),
          verticalSpace(20),
          Expanded(
            child: RefreshIndicator(
                child: CustomScrollView(
                  slivers: [
                    // Users Table,
                    const SliverToBoxAdapter(
                      child: TabelForUsers(),
                    ),
                
                    SliverToBoxAdapter(
                      child: verticalSpace(25),
                    ),
                  ],
                ),
                onRefresh: () async {}),
          ),
        ],
      ),
    );
  }
}
