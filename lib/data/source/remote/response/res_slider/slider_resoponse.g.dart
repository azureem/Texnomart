// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_resoponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderDataResponseImpl _$$SliderDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SliderDataResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : DataInSlider.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SliderDataResponseImplToJson(
        _$SliderDataResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$DataInSliderImpl _$$DataInSliderImplFromJson(Map<String, dynamic> json) =>
    _$DataInSliderImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => InnerDataSlider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataInSliderImplToJson(_$DataInSliderImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$InnerDataSliderImpl _$$InnerDataSliderImplFromJson(
        Map<String, dynamic> json) =>
    _$InnerDataSliderImpl(
      (json['id'] as num?)?.toInt(),
      json['link'] as String?,
      json['title'] as String?,
      json['image_web'] as String?,
      json['image_mobile_web'] as String?,
    );

Map<String, dynamic> _$$InnerDataSliderImplToJson(
        _$InnerDataSliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'title': instance.title,
      'image_web': instance.imageWeb,
      'image_mobile_web': instance.imageMobileWeb,
    };
