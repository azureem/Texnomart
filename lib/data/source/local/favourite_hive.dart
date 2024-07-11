import 'package:hive/hive.dart';

import 'ProductModel/favourite_model.dart';

class FavouriteHiveRepo {
  final String boxName = 'Favourites';

  Box<FavouriteModel> get box => Hive.box<FavouriteModel>(boxName);

  void addFavorite(FavouriteModel model) {
    box.put(model.id, model);
  }

  void removeFavorite(int id) {
    box.delete(id);
  }

  // bool isFavorite(int id) {
  //   return box.containsKey(id);
  // }

  List<FavouriteModel> getAllFavorites() {
    return box.values.toList();
  }

  dynamic getElement(dynamic key) {
    if (Hive.isBoxOpen(boxName)) {
      return box.get(key, defaultValue: null);
    } else {
      Hive.openBox<FavouriteModel>(boxName);
      return box.get(key, defaultValue: null);
    }
  }
}
