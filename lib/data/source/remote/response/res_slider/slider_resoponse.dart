import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_resoponse.g.dart';
part 'slider_resoponse.freezed.dart';

@freezed
class SliderDataResponse with _$SliderDataResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SliderDataResponse(
  bool? success,
  String? message,
  int? code,
      DataInSlider? data,
      ) = _SliderDataResponse;

  factory SliderDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SliderDataResponseFromJson(json);
}

@freezed
class DataInSlider with _$DataInSlider {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory DataInSlider(
  List<InnerDataSlider>? data,
      ) = _DataInSlider;

  factory DataInSlider.fromJson(Map<String, dynamic> json) =>
      _$DataInSliderFromJson(json);
}

@freezed
class InnerDataSlider with _$InnerDataSlider {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory InnerDataSlider(
  int? id,
  String? link,
  String? title,
  String? imageWeb,
  String? imageMobileWeb,
      ) = _InnerDataSlider;

  factory InnerDataSlider.fromJson(Map<String, dynamic> json) =>
      _$InnerDataSliderFromJson(json);
}
