import 'package:flutter_bloc/flutter_bloc.dart';

import 'get_all_admin_categories_event.dart';
import 'get_all_admin_categories_state.dart';

class GetAllAdminCategoriesBloc
    extends Bloc<GetAllAdminCategoriesEvent, GetAllAdminCategoriesState> {
  GetAllAdminCategoriesBloc()
      : super(const GetAllAdminCategoriesState.loading()) {
    on<GetAllAdminCategoriesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
