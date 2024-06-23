import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/customer_app_bar.dart';

import '../refactors/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomerAppBar(title: 'Search'),
      body: SearchBody(),
    );
  }
}