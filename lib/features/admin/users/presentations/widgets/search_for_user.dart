import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/features/admin/users/presentations/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:store_app/features/admin/users/presentations/bloc/get_all_users/get_all_users_event.dart';
import 'package:store_app/features/admin/users/presentations/bloc/get_all_users/get_all_users_state.dart';

class SearchForUser extends StatefulWidget {
  const SearchForUser({super.key});

  @override
  State<SearchForUser> createState() => _SearchForUserState();
}

class _SearchForUserState extends State<SearchForUser> {
  @override
  void dispose() {
    context.read<GetAllUsersBloc>().searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllUsersBloc, GetAllUsersState>(
      builder: (context, state) {
        final bloc = context.read<GetAllUsersBloc>();
        return AppTextFormFiled(
          controller: bloc.searchController,
          keyboardType: TextInputType.emailAddress,
          hintText: 'Search for user',
          onChanged: (value) {
            bloc.add(GetAllUsersEvent.searchForUser(value));
            return null;
          },
          suffixIcon: bloc.searchController.text.isEmpty
              ? const SizedBox.shrink()
              : IconButton(
                  onPressed: () {
                    bloc.searchController.clear();
                    bloc.add(const GetAllUsersEvent.getUsersEvent(isLoading: true));
                  },
                  icon: const Icon(
                    Icons.clear,
                    color: ColorsDark.blueLight,
                  ),
                ),
        );
      },
    );
  }
}
