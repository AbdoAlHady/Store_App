
import 'package:freezed_annotation/freezed_annotation.dart';
part 'banners_event.freezed.dart';

@Freezed()
class BannersEvent with _$BannersEvent {
  const factory BannersEvent.started() = _Started;
  const factory BannersEvent.getAllBanners() = GetAllBannersEvent;
}