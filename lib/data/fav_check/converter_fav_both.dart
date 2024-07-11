import 'package:texnomart/data/source/local/ProductModel/favourite_model.dart';
import 'package:texnomart/data/source/local/favourite_hive.dart';

import '../../domain/basket_model/ProductParam.dart';

class FavConverter {
  final repoFav = FavouriteHiveRepo();

  List<ProductParam> checking(List<ProductParam> comingList, int id) {

    FavouriteHiveRepo favRepo = FavouriteHiveRepo();
    if (favRepo.getElement(id) == null) {
      print("ifga tushdi");
      for (int i = 0; i < comingList.length; i++) {
        if (comingList[i].id == id) {
          FavouriteModel data = FavouriteModel(
              id: comingList[i].id,
              title: comingList[i].title,
              price: comingList[i].price,
              img: comingList[i].img,
              isCheck: comingList[i].isCheck??false,
              isFav: comingList[i].isFav??false,
              count: comingList[i].count);
          favRepo.addFavorite(data);

          var displayItem = ProductParam(
              id: comingList[i].id,
              title: comingList[i].title,
              price: comingList[i].price,
              img: comingList[i].img,
              isCheck: comingList[i].isCheck,
              isFav: true,
              count: comingList[i].count,
              smallImages: comingList[i].smallImages);
          comingList[i]=displayItem;
          return comingList;
        }
      }
    }
    print("ese tushdi");
    for (int i = 0; i < comingList.length; i++) {
      if (comingList[i].id == id) {
        repoFav.removeFavorite(id);
        print("FINAL ${comingList[i].id.toString()}");
        var data = ProductParam(
            id: comingList[i].id,
            title: comingList[i].title,
            price: comingList[i].price,
            img: comingList[i].img,
            isCheck: comingList[i].isCheck,
            isFav: false,
            count: comingList[i].count,
            smallImages: comingList[i].smallImages);
        comingList[i]=data;

      }
    }
    return comingList;
  }

  List<ProductParam> isFav(List<ProductParam> list) {

    for (int i = 0; i < list.length; i++) {
      if (repoFav.getElement(list[i].id) == null) {
        var data = ProductParam(
            id: list[i].id,
            title: list[i].title,
            img: list[i].img,
            isCheck: list[i].isCheck,
            price: list[i].price,
            count: 0,
            isFav: false,
            smallImages: []);

        list[i]=data;
      } else {
        var l = ProductParam(
            id: list[i].id,
            title: list[i].title,
            img: list[i].img,
            isCheck: list[i].isCheck,
            price: list[i].price,
            count: 0,
            isFav: true,
            smallImages: []);

        list[i]= l;
      }
    }

    return list;
  }
}
