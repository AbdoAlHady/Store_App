import 'package:freezed_annotation/freezed_annotation.dart';
part 'share_state.freezed.dart';
@Freezed()
class ShareState with _$ShareState {
  const factory ShareState.initial() = _Initial;
  const factory ShareState.loading({required int productId}) = _Loading;
  const factory ShareState.success() = _Success;
}
