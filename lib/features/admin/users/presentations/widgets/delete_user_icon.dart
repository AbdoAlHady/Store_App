import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/bloc/delete_user_bloc.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/bloc/delete_user_state.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_bloc.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_event.dart';

import '../delete_user/bloc/delete_user_event.dart';

class DeleteUserIcon extends StatelessWidget {
  const DeleteUserIcon({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteUserBloc, DeleteUserState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (data) {
            
            ShowToast.showToastSuccess(
                context: context, message: 'User Deleted Successfully');
            context.read<GetAllUsersBloc>().add(const GetAllUsersEvent.getUsersEvent(isLoading:false));
          },
          failure: (message) {
            ShowToast.showToastError(
                context: context, message: message.message);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(loading: (userId) {
          if (id == userId) {
            return Center(
              child: SizedBox(
                width: 13.w,
                height: 13.h,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          } else {
            return const Icon(
              Icons.delete,
              color: Colors.red,
              size: 25,
            );
          }
        }, orElse: () {
          return GestureDetector(
            onTap: () {
              context
                  .read<DeleteUserBloc>()
                  .add(DeleteUserEvent.deleteUser(userId: id));
            },
            child: const Icon(
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
