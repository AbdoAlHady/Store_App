import 'package:freezed_annotation/freezed_annotation.dart';
part 'favourites_state.freezed.dart';
@Freezed()
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.initial() = _Initial;
  const factory FavouritesState.addAndRemoveFavourites() = AddAndRemoveFavourites;
}
