import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';

part 'res_hit_products.freezed.dart';

part 'res_hit_products.g.dart';

@freezed
class HitProducts with _$HitProducts {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory HitProducts(
      bool success,
      String message,
      int code,
      HitProducts2 data,) = _HitProducts;

  factory HitProducts.fromJson(Map<String, dynamic> json) =>
      _$HitProductsFromJson(json);
}

@freezed
class HitProducts2 with _$HitProducts2 {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory HitProducts2(List<HitProducts3> data) = _HitProducts2;

  factory HitProducts2.fromJson(Map<String, dynamic> json) =>
      _$HitProducts2FromJson(json);
}


@freezed
class HitProducts3 with _$HitProducts3 {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory HitProducts3(
      int id,
      String name,
      String image,
      String availability,
      //String axiomMonthlyPrice,
      int salePrice,
     // String oldPrice,
      int finishPrice,
      int discountPrice,
      int reviewsCount,
     // String reviewsAverage,
      int allCount,
      List<HitProductsStickers> stickers,
      List<HitProductsSaleMonth> saleMonths,) = _HitProducts3;

  factory HitProducts3.fromJson(Map<String, dynamic> json) =>
      _$HitProducts3FromJson(json);


}



@freezed
class HitProductsStickers with _$HitProductsStickers {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory HitProductsStickers(
      String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard,
     // String image,
  ) = _HitProductsStickers;


  factory HitProductsStickers.fromJson(Map<String, dynamic> json) =>
      _$HitProductsStickersFromJson(json);
}

@freezed
class HitProductsSaleMonth with _$HitProductsSaleMonth {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory HitProductsSaleMonth(
  int id,
  String key,
  String name,
  String image,

  ) = _HitProductsSaleMonth;

  factory HitProductsSaleMonth.fromJson(Map<String, dynamic> json) => _$HitProductsSaleMonthFromJson(json);
}