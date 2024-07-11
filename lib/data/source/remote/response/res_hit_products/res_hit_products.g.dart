// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_hit_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HitProductsImpl _$$HitProductsImplFromJson(Map<String, dynamic> json) =>
    _$HitProductsImpl(
      json['success'] as bool,
      json['message'] as String,
      (json['code'] as num).toInt(),
      HitProducts2.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HitProductsImplToJson(_$HitProductsImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data.toJson(),
    };

_$HitProducts2Impl _$$HitProducts2ImplFromJson(Map<String, dynamic> json) =>
    _$HitProducts2Impl(
      (json['data'] as List<dynamic>)
          .map((e) => HitProducts3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HitProducts2ImplToJson(_$HitProducts2Impl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$HitProducts3Impl _$$HitProducts3ImplFromJson(Map<String, dynamic> json) =>
    _$HitProducts3Impl(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['image'] as String,
      json['availability'] as String,
      (json['sale_price'] as num).toInt(),
      (json['finish_price'] as num).toInt(),
      (json['discount_price'] as num).toInt(),
      (json['reviews_count'] as num).toInt(),
      (json['all_count'] as num).toInt(),
      (json['stickers'] as List<dynamic>)
          .map((e) => HitProductsStickers.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_months'] as List<dynamic>)
          .map((e) => HitProductsSaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HitProducts3ImplToJson(_$HitProducts3Impl instance) =>
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
      'stickers': instance.stickers.map((e) => e.toJson()).toList(),
      'sale_months': instance.saleMonths.map((e) => e.toJson()).toList(),
    };

_$HitProductsStickersImpl _$$HitProductsStickersImplFromJson(
        Map<String, dynamic> json) =>
    _$HitProductsStickersImpl(
      json['name'] as String,
      json['background_color'] as String,
      json['text_color'] as String,
      json['is_image'] as bool,
      json['show_in_card'] as bool,
    );

Map<String, dynamic> _$$HitProductsStickersImplToJson(
        _$HitProductsStickersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'text_color': instance.textColor,
      'is_image': instance.isImage,
      'show_in_card': instance.showInCard,
    };

_$HitProductsSaleMonthImpl _$$HitProductsSaleMonthImplFromJson(
        Map<String, dynamic> json) =>
    _$HitProductsSaleMonthImpl(
      (json['id'] as num).toInt(),
      json['key'] as String,
      json['name'] as String,
      json['image'] as String,
    );

Map<String, dynamic> _$$HitProductsSaleMonthImplToJson(
        _$HitProductsSaleMonthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'image': instance.image,
    };
