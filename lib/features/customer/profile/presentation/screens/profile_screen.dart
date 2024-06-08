import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_event.dart';

import '../refactors/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.getUserInfo()),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const ProfileScreenBody(),
      ),
    );
  }
}
