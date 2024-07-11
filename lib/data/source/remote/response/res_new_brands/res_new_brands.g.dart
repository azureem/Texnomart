// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_new_brands.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewProductsImpl _$$NewProductsImplFromJson(Map<String, dynamic> json) =>
    _$NewProductsImpl(
      json['success'] as bool,
      json['message'] as String,
      (json['code'] as num).toInt(),
      NewProductsData2.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewProductsImplToJson(_$NewProductsImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data.toJson(),
    };

_$NewProductsData2Impl _$$NewProductsData2ImplFromJson(
        Map<String, dynamic> json) =>
    _$NewProductsData2Impl(
      (json['data'] as List<dynamic>)
          .map((e) => NewProducts3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewProductsData2ImplToJson(
        _$NewProductsData2Impl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$NewProducts3Impl _$$NewProducts3ImplFromJson(Map<String, dynamic> json) =>
    _$NewProducts3Impl(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['image'] as String,
      json['availability'] as String,
      (json['sale_price'] as num).toInt(),
      (json['finish_price'] as num).toInt(),
      (json['discount_price'] as num).toInt(),
      (json['reviews_count'] as num).toInt(),
      (json['all_count'] as num).toInt(),
      (json['sale_months'] as List<dynamic>)
          .map((e) => NewProducts4.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewProducts3ImplToJson(_$NewProducts3Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'sale_price': instance.salePrice,
      'finish_price': instance.finishPrice,
      'discount_price': instance.discountPrice,
      'reviews_count': instance.reviewsCount,
      'all_count': instance.allCount,
      'sale_months': instance.saleMonths.map((e) => e.toJson()).toList(),
    };

_$NewProducts4Impl _$$NewProducts4ImplFromJson(Map<String, dynamic> json) =>
    _$NewProducts4Impl(
      (json['id'] as num).toInt(),
      json['key'] as String,
      json['name'] as String,
      json['image'] as String,
    );

Map<String, dynamic> _$$NewProducts4ImplToJson(_$NewProducts4Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'image': instance.image,
    };
