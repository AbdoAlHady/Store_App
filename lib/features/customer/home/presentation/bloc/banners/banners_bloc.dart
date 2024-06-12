import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/home/data/repos/home_repo.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_state.dart';

class BannersBloc extends Bloc<BannersEvent, BannersState> {
  final HomeRepo _homeRepo;
  BannersBloc(this._homeRepo) : super(const BannersState.loading()) {
    on<GetAllBannersEvent>(_getAllBanners);
  }

  FutureOr<void> _getAllBanners(event, emit) async {
    emit(const BannersState.loading());
    final result = await _homeRepo.getAllBanners();
    result.when(
        success: (bannersResponse) {
          if (bannersResponse.bannersList.isEmpty) {
            emit(const BannersState.empty());
          } else {
            emit(BannersState.success(bannersResponse.bannersList));
          }
        },
        failure: (message) {
          emit(BannersState.failurer(message));
        });
  }
}
