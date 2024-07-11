// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_special_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialCategoriesImpl _$$SpecialCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialCategoriesImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : SpecialData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialCategoriesImplToJson(
        _$SpecialCategoriesImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$SpecialDataImpl _$$SpecialDataImplFromJson(Map<String, dynamic> json) =>
    _$SpecialDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => SpecialInnerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialDataImplToJson(_$SpecialDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$SpecialInnerDataImpl _$$SpecialInnerDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialInnerDataImpl(
      json['title'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$SpecialInnerDataImplToJson(
        _$SpecialInnerDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
    };
