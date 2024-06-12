import 'package:freezed_annotation/freezed_annotation.dart';
part 'banners_state.freezed.dart';
@Freezed()
class BannersState with _$BannersState {
  const factory BannersState.loading() = LoadingState;
  const factory BannersState.success(List<String> bannersList) = SuccessState;
  const factory BannersState.empty() = EmptyState;
  const factory BannersState.failurer(String message) = failureState;

  
}
