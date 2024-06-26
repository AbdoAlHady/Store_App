
import 'package:hive_flutter/hive_flutter.dart';
part 'favourites_model.g.dart';

@HiveType(typeId: 1)
class FavouritesModel{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final String price;
  @HiveField(4)
  final String categoryName;

  FavouritesModel(this.id, this.name, this.image, this.price, this.categoryName);

}