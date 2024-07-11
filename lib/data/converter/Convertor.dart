import 'package:texnomart/data/source/local/BasketModel/basket_model.dart';
import 'package:texnomart/data/source/local/ProductModel/favourite_model.dart';
import 'package:texnomart/data/source/remote/response/detail_response/detail_responce.dart';
import 'package:texnomart/data/source/remote/response/res_hit_products/res_hit_products.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/data/source/remote/response/products_all_ommabop/products_all_category.dart';


import '../source/remote/response/res_new_brands/res_new_brands.dart';

class Convertor {
  static ProductParam fromNewProductToProductParam(NewProducts3 response) {
    return ProductParam(
        id: response.id,
        title: response.name,
        price: response.finishPrice,
        img: response.image,
        isCheck: false,
        isFav: false,
        count: 0,
        smallImages: []);
  }

  static ProductParam fromHitToProductParam(HitProducts3 response) {
    return ProductParam(
        id: response.id,
        title: response.name,
        price: response.finishPrice,
        img: response.image,
        isCheck: false,
        isFav: false,
        count: 0,
        smallImages: []);
  }

  static ProductParam fromGetDetailToParam(GetDetail? response) {
    return ProductParam(
        id: response?.id ?? 0,
        title: response?.name ?? "",
        price: response?.catalog?.maxPrice ?? 0,
        img: response?.smallImages?[1]??"",
        isCheck: false,
        isFav: false,
        count: 0,
        smallImages: response?.smallImages ?? []);
  }

  static ProductParam basketProductToParam(BasketModel basketModel) {
    return ProductParam(
        id: basketModel.id,
        title: basketModel.title,
        price: basketModel.price,
        img: basketModel.img,
        isCheck: basketModel.isCheck,
        isFav: basketModel.isFav,
        count: basketModel.count,
        smallImages: []);
  }

  static BasketModel paramToBasketModel(ProductParam productParam) {
    return BasketModel(
        id: productParam.id,
        title: productParam.title,
        price: productParam.price,
        img: productParam.img,
        isCheck: productParam.isCheck,
        isFav: productParam.isFav,
        count: productParam.count);
  }

  static ProductParam fromFavoriteToParam(FavouriteModel response) {
    return ProductParam(
        id: response.id,
        title: response.title,
        price: response.price,
        img: response.img,
        isCheck: response.isCheck,//changes
        isFav: response.isFav!!,
        count: response.count,
        smallImages: []);
  }

  static FavouriteModel fromParamToFavorite(ProductParam response) {
    return FavouriteModel(
        id: response.id,
        title: response.title,
        price: response.price,
        img: response.img,
        isCheck: response.isCheck??false,
        isFav: response.isFav??false,
        count: response.count);
  }


  static ProductParam fromProductsOmmabopToParam(ProductsOmmabop response) {
    // int price = 0;
    // if (response.fSalePrice != null) {
    //   price = int.parse(response.fSalePrice!);
    //   // Use intValue as needed
    // } else {
    // }
    return ProductParam(
        id: response.id??0,
        title: response.name??"",
        price: 0,
        img: response.image??"",
        isCheck: false,
        isFav: false,
        count: 0,
        smallImages: []);
  }


// static ProductParam convertGetDetailToParam(Products detailData){
//   return ProductParam(
//       id: detailData.id,
//       title: detailData.name,
//       price: detailData.fLoanPrice,
//       img: false,
//       isCheck: false,
//       isFav: false,
//       count: 0);
// }
}
