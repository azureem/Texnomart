import 'package:hive/hive.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';

import '../../converter/Convertor.dart';
import 'BasketModel/basket_model.dart';

class BasketHive {
  final String boxName = 'Basket';

  Box<BasketModel> get box => Hive.box<BasketModel>(boxName);

  void addBasket(BasketModel model) {
    box.put(model.id, model);
  }

  void removeFromBasket(int id) {
    box.delete(id);
  }

  bool isInBasket(int id) {
    return box.containsKey(id);
  }

  List<ProductParam> changed() {
    List<ProductParam> list = [];
    int length = box.values.toList().length;
    List<BasketModel> ls = box.values.toList();
    for (int i = 0; i < length; i++) {
      ls[i].isCheck = true;
      var data = Convertor.basketProductToParam(ls[i]);
      list.add(data);
    }
    return list;
  }

  List<BasketModel> getAllFromBasket() {
    return box.values.toList();
  }

  dynamic getElement(dynamic key) {
    if (Hive.isBoxOpen(boxName)) {
      return box.get(key, defaultValue: null);
    } else {
      Hive.openBox<BasketHive>(boxName);
      return box.get(key, defaultValue: null);
    }
  }
}
