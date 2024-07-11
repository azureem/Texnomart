import 'package:texnomart/data/source/local/BasketModel/basket_model.dart';
import 'package:texnomart/data/source/local/ProductModel/favourite_model.dart';
import 'package:texnomart/data/source/local/basket_hive.dart';
import 'package:texnomart/data/source/local/favourite_hive.dart';

import '../../domain/basket_model/ProductParam.dart';

class BasketConverter {
  final repoBasket = BasketHive();

  List<ProductParam> checkingBasket(List<ProductParam> comingList, int id) {
    BasketHive favRepo = BasketHive();
    if (favRepo.getElement(id) == null) {
      print("birinchi IF");
      for (int i = 0; i < comingList.length; i++) {
        if (comingList[i].id == id) {
          print("IDDDD ${comingList[i].id}");
          BasketModel data = BasketModel(
              id: comingList[i].id,
              title: comingList[i].title,
              price: comingList[i].price,
              img: comingList[i].img,
              isCheck: comingList[i].isCheck??false,
              isFav: comingList[i].isFav??false,
              count: comingList[i].count);
          favRepo.addBasket(data);

          var displayItem = ProductParam(
              id: comingList[i].id,
              title: comingList[i].title,
              price: comingList[i].price,
              img: comingList[i].img,
              isCheck: true,
              isFav: comingList[i].isFav,
              count: comingList[i].count,
              smallImages: comingList[i].smallImages);

          comingList[i]=displayItem;
          return comingList;
        }
      }
    }

    print("ELSE CASE");
    for (int i = 0; i < comingList.length; i++) {
      if (comingList[i].id == id) {
        repoBasket.removeFromBasket(id);
        print("FINAL ${comingList[i].id.toString()}");
        var data = ProductParam(
            id: comingList[i].id,
            title: comingList[i].title,
            price: comingList[i].price,
            img: comingList[i].img,
            isCheck: false,
            isFav: comingList[i].isFav,
            count: comingList[i].count,
            smallImages: comingList[i].smallImages);
        comingList[i]=data;
        return comingList;
      }
    }
    return comingList;
  }

  List<ProductParam> isInBasket(List<ProductParam> list) {

    for (int i = 0; i < list.length; i++) {
      if (repoBasket.getElement(list[i].id) == null) {
        var data = ProductParam(
            id: list[i].id,
            title: list[i].title,
            img: list[i].img,
            isCheck: false,
            price: list[i].price,
            count: 0,
            isFav: list[i].isFav,
            smallImages: []);

        list[i]=data;
      } else {
        var l = ProductParam(
            id: list[i].id,
            title: list[i].title,
            img: list[i].img,
            isCheck: true,
            price: list[i].price,
            count: 0,
            isFav: list[i].isFav,
            smallImages: []);

        list[i]= l;
      }
    }

    return list;
  }
}
