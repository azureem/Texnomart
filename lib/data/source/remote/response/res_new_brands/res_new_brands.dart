import 'package:freezed_annotation/freezed_annotation.dart';
part 'res_new_brands.freezed.dart';
part 'res_new_brands.g.dart';

@freezed
class NewProducts with _$NewProducts {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory NewProducts(
    bool success,
    String message,
    int code,
    NewProductsData2 data,
  ) = _NewProducts;

  factory NewProducts.fromJson(Map<String, dynamic> json) =>
      _$NewProductsFromJson(json);
}

@freezed
class NewProductsData2 with _$NewProductsData2 {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory NewProductsData2(List<NewProducts3> data) = _NewProductsData2;

  factory NewProductsData2.fromJson(Map<String, dynamic> json) =>
      _$NewProductsData2FromJson(json);
}
@freezed
class NewProducts3 with _$NewProducts3 {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory NewProducts3(
    int id,
    String name,
    String image,
    String availability,
 //   String axiomMonthlyPrice,
    int salePrice,
   // String oldPrice,
    int finishPrice,
    int discountPrice,
    int reviewsCount,
   // String reviewsAverage,
    int allCount,
   // List<String> stickers,
    List<NewProducts4> saleMonths,
  ) = _NewProducts3;

  factory NewProducts3.fromJson(Map<String, dynamic> json) =>
      _$NewProducts3FromJson(json);
}

@freezed
class NewProducts4 with _$NewProducts4 {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

 const factory NewProducts4(
    int id,
    String key,
    String name,
    String image,
  ) = _NewProducts4;

  factory NewProducts4.fromJson(Map<String, dynamic> json) =>
      _$NewProducts4FromJson(json);
}
