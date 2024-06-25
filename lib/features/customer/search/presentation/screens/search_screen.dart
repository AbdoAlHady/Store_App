import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/widgets/customer_app_bar.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_bloc.dart';

import '../refactors/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
      child: const Scaffold(
        appBar: CustomerAppBar(title: 'Search'),
        body: SearchBody(),
      ),
    );
  }
}
