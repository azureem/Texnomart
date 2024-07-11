import 'package:freezed_annotation/freezed_annotation.dart';

part 'res_special_brends.g.dart';

part 'res_special_brends.freezed.dart';

@freezed
class SpecialBrends with _$SpecialBrends {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialBrends(
      bool? success,
      String? message,
      int? code,
      SpecialBrendsData? data,
      ) = _SpecialBrends;

  factory SpecialBrends.fromJson(Map<String, dynamic> json) =>
      _$SpecialBrendsFromJson(json);
}

@freezed
class SpecialBrendsData with _$SpecialBrendsData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialBrendsData(
      List<SpecialBrendsData2>? data,
      ) = _SpecialBrendsData;

  factory SpecialBrendsData.fromJson(Map<String, dynamic> json) =>
      _$SpecialBrendsDataFromJson(json);
}

@freezed
class SpecialBrendsData2 with _$SpecialBrendsData2{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialBrendsData2(
      String? name,
      String? slug,
      String? image,
      String? imageAlt,
      SpecialBrendsInner? meta,
      ) = _SpecialBrendsData2;

  factory SpecialBrendsData2.fromJson(Map<String, dynamic> json) =>
      _$SpecialBrendsData2FromJson(json);
}

@freezed
class SpecialBrendsInner with _$SpecialBrendsInner {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialBrendsInner(
      String? title,
      String? description,
      String? keywords,
      ) = _SpecialBrendsInner;

  factory SpecialBrendsInner.fromJson(Map<String, dynamic> json) =>
      _$SpecialBrendsInnerFromJson(json);
}

