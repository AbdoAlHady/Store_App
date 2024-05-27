import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_bloc.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_state.dart';

import '../delete_user/get_all_users/get_all_users_event.dart';
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
          Flexible(
            child: RefreshIndicator(
                child: CustomScrollView(
                  slivers: [
                    // Users Table,
                    SliverToBoxAdapter(
                      child: BlocBuilder<GetAllUsersBloc, GetAllUsersState>(
                        builder: (context, state) {
                          return state.when(
                            loading: () => const Center(
                              child: CircularProgressIndicator(
                                color: ColorsDark.blueDark,
                              ),
                            ),
                            search: (users) {
                              return TabelForUsers(users: users);
                            },
                            success: (users) {
                              return TabelForUsers(users: users);
                            },
                            empty: EmptyScreen.new,
                            failure: Text.new,
                          );
                        },
                      ),
                    ),

                    SliverToBoxAdapter(
                      child: verticalSpace(25),
                    ),
                  ],
                ),
                onRefresh: () async {
                  context.read<GetAllUsersBloc>().add(
                         const GetAllUsersEvent.getUsersEvent(isLoading: true),
                      );
                }),
          ),
        ],
      ),
    );
  }
}
