import 'package:freezed_annotation/freezed_annotation.dart';
part 'res_special_category.freezed.dart';
part 'res_special_category.g.dart';

@freezed
class SpecialCategories with _$SpecialCategories {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialCategories(
  bool? success,
  String? message,
  int? code,
  SpecialData? data,
      ) = _SpecialCategories;
  factory SpecialCategories.fromJson(Map<String, dynamic> json)=>
  _$SpecialCategoriesFromJson(json);

}


@freezed
class SpecialData with _$SpecialData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialData(
  List<SpecialInnerData>? data,

  ) = _SpecialData;

  factory SpecialData.fromJson(Map<String, dynamic>json)=>_$SpecialDataFromJson(json);
}

@freezed
class SpecialInnerData with _$SpecialInnerData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialInnerData(
  String? title,
  String? image,
  String? slug,
      ) = _SpecialInnerData;

  factory SpecialInnerData.fromJson(Map<String, dynamic> json) => _$SpecialInnerDataFromJson(json);


}