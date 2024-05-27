import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_bloc.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_event.dart';
import 'package:store_app/features/admin/users/presentations/refactors/users_body.dart';

import '../../../../../core/common/widgets/admin_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<GetAllUsersBloc>()
            ..add(
              const GetAllUsersEvent.getUsersEvent(isLoading: true),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: context.color.mainColor!,
            title: 'Users'),
        body: const UsersAdminBody(),
      ),
    );
  }
}
