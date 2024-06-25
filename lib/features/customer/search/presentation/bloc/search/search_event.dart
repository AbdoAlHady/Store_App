import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/model/search_request_body.dart';
part 'search_event.freezed.dart';


@Freezed()
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _Started;
  const factory SearchEvent.searchProduct({
    required SearchRequestBody body,
  }) = SearchProductEvent;
}