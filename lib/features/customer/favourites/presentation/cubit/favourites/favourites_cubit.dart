import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/service/hive/hive_database.dart';
import 'package:store_app/features/customer/favourites/data/models/favourites_model.dart';
import 'package:store_app/features/customer/favourites/presentation/cubit/favourites/favourites_state.dart';

class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit() : super(const FavouritesState.initial());

  Future<void> manageFavourites({
    required String id,
    required String name,
    required String image,
    required String price,
    required String categoryName,
  }) async {
    emit(const FavouritesState.initial());
    final existIndex = HiveDatabase()
        .favouritesBox!
        .values
        .toList()
        .indexWhere((element) => element.id == id);
    if (existIndex >= 0) {
      await HiveDatabase().favouritesBox!.delete(existIndex);
      getFavourites();
    } else {
      await HiveDatabase()
          .favouritesBox!
          .add(FavouritesModel(id, name, image, price, categoryName));
      getFavourites();
    }
    emit(const FavouritesState.addAndRemoveFavourites());
  }

  bool isFavourites(String productId) {
    return HiveDatabase()
        .favouritesBox!
        .values
        .toList()
        .any((element) => element.id == productId);
  }

  List<FavouritesModel> getFavourites() {
    return HiveDatabase().favouritesBox!.values.toList();
  }
}
