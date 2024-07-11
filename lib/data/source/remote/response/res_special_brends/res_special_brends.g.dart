// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_special_brends.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialBrendsImpl _$$SpecialBrendsImplFromJson(Map<String, dynamic> json) =>
    _$SpecialBrendsImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : SpecialBrendsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialBrendsImplToJson(_$SpecialBrendsImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$SpecialBrendsDataImpl _$$SpecialBrendsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialBrendsDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => SpecialBrendsData2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialBrendsDataImplToJson(
        _$SpecialBrendsDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$SpecialBrendsData2Impl _$$SpecialBrendsData2ImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialBrendsData2Impl(
      json['name'] as String?,
      json['slug'] as String?,
      json['image'] as String?,
      json['image_alt'] as String?,
      json['meta'] == null
          ? null
          : SpecialBrendsInner.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialBrendsData2ImplToJson(
        _$SpecialBrendsData2Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'image_alt': instance.imageAlt,
      'meta': instance.meta?.toJson(),
    };

_$SpecialBrendsInnerImpl _$$SpecialBrendsInnerImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialBrendsInnerImpl(
      json['title'] as String?,
      json['description'] as String?,
      json['keywords'] as String?,
    );

Map<String, dynamic> _$$SpecialBrendsInnerImplToJson(
        _$SpecialBrendsInnerImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'keywords': instance.keywords,
    };
