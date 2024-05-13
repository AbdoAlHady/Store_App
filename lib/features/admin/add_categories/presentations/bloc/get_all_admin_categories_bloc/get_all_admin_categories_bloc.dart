import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';

import 'get_all_admin_categories_event.dart';
import 'get_all_admin_categories_state.dart';

class GetAllAdminCategoriesBloc
    extends Bloc<GetAllAdminCategoriesEvent, GetAllAdminCategoriesState> {
  final CategoriesAdminDataSource _dataSource;
  GetAllAdminCategoriesBloc(this._dataSource)
      : super(const GetAllAdminCategoriesState.loading()) {
    on<GetAllAdminCategoriesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
