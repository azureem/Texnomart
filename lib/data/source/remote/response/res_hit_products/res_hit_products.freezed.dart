// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'res_hit_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HitProducts _$HitProductsFromJson(Map<String, dynamic> json) {
  return _HitProducts.fromJson(json);
}

/// @nodoc
mixin _$HitProducts {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  HitProducts2 get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitProductsCopyWith<HitProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitProductsCopyWith<$Res> {
  factory $HitProductsCopyWith(
          HitProducts value, $Res Function(HitProducts) then) =
      _$HitProductsCopyWithImpl<$Res, HitProducts>;
  @useResult
  $Res call({bool success, String message, int code, HitProducts2 data});

  $HitProducts2CopyWith<$Res> get data;
}

/// @nodoc
class _$HitProductsCopyWithImpl<$Res, $Val extends HitProducts>
    implements $HitProductsCopyWith<$Res> {
  _$HitProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HitProducts2,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HitProducts2CopyWith<$Res> get data {
    return $HitProducts2CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HitProductsImplCopyWith<$Res>
    implements $HitProductsCopyWith<$Res> {
  factory _$$HitProductsImplCopyWith(
          _$HitProductsImpl value, $Res Function(_$HitProductsImpl) then) =
      __$$HitProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int code, HitProducts2 data});

  @override
  $HitProducts2CopyWith<$Res> get data;
}

/// @nodoc
class __$$HitProductsImplCopyWithImpl<$Res>
    extends _$HitProductsCopyWithImpl<$Res, _$HitProductsImpl>
    implements _$$HitProductsImplCopyWith<$Res> {
  __$$HitProductsImplCopyWithImpl(
      _$HitProductsImpl _value, $Res Function(_$HitProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$HitProductsImpl(
      null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HitProducts2,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HitProductsImpl implements _HitProducts {
  const _$HitProductsImpl(this.success, this.message, this.code, this.data);

  factory _$HitProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitProductsImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int code;
  @override
  final HitProducts2 data;

  @override
  String toString() {
    return 'HitProducts(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitProductsImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitProductsImplCopyWith<_$HitProductsImpl> get copyWith =>
      __$$HitProductsImplCopyWithImpl<_$HitProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitProductsImplToJson(
      this,
    );
  }
}

abstract class _HitProducts implements HitProducts {
  const factory _HitProducts(final bool success, final String message,
      final int code, final HitProducts2 data) = _$HitProductsImpl;

  factory _HitProducts.fromJson(Map<String, dynamic> json) =
      _$HitProductsImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get code;
  @override
  HitProducts2 get data;
  @override
  @JsonKey(ignore: true)
  _$$HitProductsImplCopyWith<_$HitProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitProducts2 _$HitProducts2FromJson(Map<String, dynamic> json) {
  return _HitProducts2.fromJson(json);
}

/// @nodoc
mixin _$HitProducts2 {
  List<HitProducts3> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitProducts2CopyWith<HitProducts2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitProducts2CopyWith<$Res> {
  factory $HitProducts2CopyWith(
          HitProducts2 value, $Res Function(HitProducts2) then) =
      _$HitProducts2CopyWithImpl<$Res, HitProducts2>;
  @useResult
  $Res call({List<HitProducts3> data});
}

/// @nodoc
class _$HitProducts2CopyWithImpl<$Res, $Val extends HitProducts2>
    implements $HitProducts2CopyWith<$Res> {
  _$HitProducts2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HitProducts3>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitProducts2ImplCopyWith<$Res>
    implements $HitProducts2CopyWith<$Res> {
  factory _$$HitProducts2ImplCopyWith(
          _$HitProducts2Impl value, $Res Function(_$HitProducts2Impl) then) =
      __$$HitProducts2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HitProducts3> data});
}

/// @nodoc
class __$$HitProducts2ImplCopyWithImpl<$Res>
    extends _$HitProducts2CopyWithImpl<$Res, _$HitProducts2Impl>
    implements _$$HitProducts2ImplCopyWith<$Res> {
  __$$HitProducts2ImplCopyWithImpl(
      _$HitProducts2Impl _value, $Res Function(_$HitProducts2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HitProducts2Impl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HitProducts3>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HitProducts2Impl implements _HitProducts2 {
  const _$HitProducts2Impl(final List<HitProducts3> data) : _data = data;

  factory _$HitProducts2Impl.fromJson(Map<String, dynamic> json) =>
      _$$HitProducts2ImplFromJson(json);

  final List<HitProducts3> _data;
  @override
  List<HitProducts3> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HitProducts2(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitProducts2Impl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitProducts2ImplCopyWith<_$HitProducts2Impl> get copyWith =>
      __$$HitProducts2ImplCopyWithImpl<_$HitProducts2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitProducts2ImplToJson(
      this,
    );
  }
}

abstract class _HitProducts2 implements HitProducts2 {
  const factory _HitProducts2(final List<HitProducts3> data) =
      _$HitProducts2Impl;

  factory _HitProducts2.fromJson(Map<String, dynamic> json) =
      _$HitProducts2Impl.fromJson;

  @override
  List<HitProducts3> get data;
  @override
  @JsonKey(ignore: true)
  _$$HitProducts2ImplCopyWith<_$HitProducts2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitProducts3 _$HitProducts3FromJson(Map<String, dynamic> json) {
  return _HitProducts3.fromJson(json);
}

/// @nodoc
mixin _$HitProducts3 {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get availability =>
      throw _privateConstructorUsedError; //String axiomMonthlyPrice,
  int get salePrice => throw _privateConstructorUsedError; // String oldPrice,
  int get finishPrice => throw _privateConstructorUsedError;
  int get discountPrice => throw _privateConstructorUsedError;
  int get reviewsCount =>
      throw _privateConstructorUsedError; // String reviewsAverage,
  int get allCount => throw _privateConstructorUsedError;
  List<HitProductsStickers> get stickers => throw _privateConstructorUsedError;
  List<HitProductsSaleMonth> get saleMonths =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitProducts3CopyWith<HitProducts3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitProducts3CopyWith<$Res> {
  factory $HitProducts3CopyWith(
          HitProducts3 value, $Res Function(HitProducts3) then) =
      _$HitProducts3CopyWithImpl<$Res, HitProducts3>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String availability,
      int salePrice,
      int finishPrice,
      int discountPrice,
      int reviewsCount,
      int allCount,
      List<HitProductsStickers> stickers,
      List<HitProductsSaleMonth> saleMonths});
}

/// @nodoc
class _$HitProducts3CopyWithImpl<$Res, $Val extends HitProducts3>
    implements $HitProducts3CopyWith<$Res> {
  _$HitProducts3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? availability = null,
    Object? salePrice = null,
    Object? finishPrice = null,
    Object? discountPrice = null,
    Object? reviewsCount = null,
    Object? allCount = null,
    Object? stickers = null,
    Object? saleMonths = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      finishPrice: null == finishPrice
          ? _value.finishPrice
          : finishPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      allCount: null == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int,
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<HitProductsStickers>,
      saleMonths: null == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<HitProductsSaleMonth>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitProducts3ImplCopyWith<$Res>
    implements $HitProducts3CopyWith<$Res> {
  factory _$$HitProducts3ImplCopyWith(
          _$HitProducts3Impl value, $Res Function(_$HitProducts3Impl) then) =
      __$$HitProducts3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String availability,
      int salePrice,
      int finishPrice,
      int discountPrice,
      int reviewsCount,
      int allCount,
      List<HitProductsStickers> stickers,
      List<HitProductsSaleMonth> saleMonths});
}

/// @nodoc
class __$$HitProducts3ImplCopyWithImpl<$Res>
    extends _$HitProducts3CopyWithImpl<$Res, _$HitProducts3Impl>
    implements _$$HitProducts3ImplCopyWith<$Res> {
  __$$HitProducts3ImplCopyWithImpl(
      _$HitProducts3Impl _value, $Res Function(_$HitProducts3Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? availability = null,
    Object? salePrice = null,
    Object? finishPrice = null,
    Object? discountPrice = null,
    Object? reviewsCount = null,
    Object? allCount = null,
    Object? stickers = null,
    Object? saleMonths = null,
  }) {
    return _then(_$HitProducts3Impl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == finishPrice
          ? _value.finishPrice
          : finishPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<HitProductsStickers>,
      null == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<HitProductsSaleMonth>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HitProducts3Impl implements _HitProducts3 {
  const _$HitProducts3Impl(
      this.id,
      this.name,
      this.image,
      this.availability,
      this.salePrice,
      this.finishPrice,
      this.discountPrice,
      this.reviewsCount,
      this.allCount,
      final List<HitProductsStickers> stickers,
      final List<HitProductsSaleMonth> saleMonths)
      : _stickers = stickers,
        _saleMonths = saleMonths;

  factory _$HitProducts3Impl.fromJson(Map<String, dynamic> json) =>
      _$$HitProducts3ImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String availability;
//String axiomMonthlyPrice,
  @override
  final int salePrice;
// String oldPrice,
  @override
  final int finishPrice;
  @override
  final int discountPrice;
  @override
  final int reviewsCount;
// String reviewsAverage,
  @override
  final int allCount;
  final List<HitProductsStickers> _stickers;
  @override
  List<HitProductsStickers> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  final List<HitProductsSaleMonth> _saleMonths;
  @override
  List<HitProductsSaleMonth> get saleMonths {
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleMonths);
  }

  @override
  String toString() {
    return 'HitProducts3(id: $id, name: $name, image: $image, availability: $availability, salePrice: $salePrice, finishPrice: $finishPrice, discountPrice: $discountPrice, reviewsCount: $reviewsCount, allCount: $allCount, stickers: $stickers, saleMonths: $saleMonths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitProducts3Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.finishPrice, finishPrice) ||
                other.finishPrice == finishPrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      availability,
      salePrice,
      finishPrice,
      discountPrice,
      reviewsCount,
      allCount,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_saleMonths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitProducts3ImplCopyWith<_$HitProducts3Impl> get copyWith =>
      __$$HitProducts3ImplCopyWithImpl<_$HitProducts3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitProducts3ImplToJson(
      this,
    );
  }
}

abstract class _HitProducts3 implements HitProducts3 {
  const factory _HitProducts3(
      final int id,
      final String name,
      final String image,
      final String availability,
      final int salePrice,
      final int finishPrice,
      final int discountPrice,
      final int reviewsCount,
      final int allCount,
      final List<HitProductsStickers> stickers,
      final List<HitProductsSaleMonth> saleMonths) = _$HitProducts3Impl;

  factory _HitProducts3.fromJson(Map<String, dynamic> json) =
      _$HitProducts3Impl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get availability;
  @override //String axiomMonthlyPrice,
  int get salePrice;
  @override // String oldPrice,
  int get finishPrice;
  @override
  int get discountPrice;
  @override
  int get reviewsCount;
  @override // String reviewsAverage,
  int get allCount;
  @override
  List<HitProductsStickers> get stickers;
  @override
  List<HitProductsSaleMonth> get saleMonths;
  @override
  @JsonKey(ignore: true)
  _$$HitProducts3ImplCopyWith<_$HitProducts3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitProductsStickers _$HitProductsStickersFromJson(Map<String, dynamic> json) {
  return _HitProductsStickers.fromJson(json);
}

/// @nodoc
mixin _$HitProductsStickers {
  String get name => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  String get textColor => throw _privateConstructorUsedError;
  bool get isImage => throw _privateConstructorUsedError;
  bool get showInCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitProductsStickersCopyWith<HitProductsStickers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitProductsStickersCopyWith<$Res> {
  factory $HitProductsStickersCopyWith(
          HitProductsStickers value, $Res Function(HitProductsStickers) then) =
      _$HitProductsStickersCopyWithImpl<$Res, HitProductsStickers>;
  @useResult
  $Res call(
      {String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard});
}

/// @nodoc
class _$HitProductsStickersCopyWithImpl<$Res, $Val extends HitProductsStickers>
    implements $HitProductsStickersCopyWith<$Res> {
  _$HitProductsStickersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? isImage = null,
    Object? showInCard = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      showInCard: null == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitProductsStickersImplCopyWith<$Res>
    implements $HitProductsStickersCopyWith<$Res> {
  factory _$$HitProductsStickersImplCopyWith(_$HitProductsStickersImpl value,
          $Res Function(_$HitProductsStickersImpl) then) =
      __$$HitProductsStickersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard});
}

/// @nodoc
class __$$HitProductsStickersImplCopyWithImpl<$Res>
    extends _$HitProductsStickersCopyWithImpl<$Res, _$HitProductsStickersImpl>
    implements _$$HitProductsStickersImplCopyWith<$Res> {
  __$$HitProductsStickersImplCopyWithImpl(_$HitProductsStickersImpl _value,
      $Res Function(_$HitProductsStickersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? isImage = null,
    Object? showInCard = null,
  }) {
    return _then(_$HitProductsStickersImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      null == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HitProductsStickersImpl implements _HitProductsStickers {
  const _$HitProductsStickersImpl(this.name, this.backgroundColor,
      this.textColor, this.isImage, this.showInCard);

  factory _$HitProductsStickersImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitProductsStickersImplFromJson(json);

  @override
  final String name;
  @override
  final String backgroundColor;
  @override
  final String textColor;
  @override
  final bool isImage;
  @override
  final bool showInCard;

  @override
  String toString() {
    return 'HitProductsStickers(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, showInCard: $showInCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitProductsStickersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.showInCard, showInCard) ||
                other.showInCard == showInCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, backgroundColor, textColor, isImage, showInCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitProductsStickersImplCopyWith<_$HitProductsStickersImpl> get copyWith =>
      __$$HitProductsStickersImplCopyWithImpl<_$HitProductsStickersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitProductsStickersImplToJson(
      this,
    );
  }
}

abstract class _HitProductsStickers implements HitProductsStickers {
  const factory _HitProductsStickers(
      final String name,
      final String backgroundColor,
      final String textColor,
      final bool isImage,
      final bool showInCard) = _$HitProductsStickersImpl;

  factory _HitProductsStickers.fromJson(Map<String, dynamic> json) =
      _$HitProductsStickersImpl.fromJson;

  @override
  String get name;
  @override
  String get backgroundColor;
  @override
  String get textColor;
  @override
  bool get isImage;
  @override
  bool get showInCard;
  @override
  @JsonKey(ignore: true)
  _$$HitProductsStickersImplCopyWith<_$HitProductsStickersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitProductsSaleMonth _$HitProductsSaleMonthFromJson(Map<String, dynamic> json) {
  return _HitProductsSaleMonth.fromJson(json);
}

/// @nodoc
mixin _$HitProductsSaleMonth {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitProductsSaleMonthCopyWith<HitProductsSaleMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitProductsSaleMonthCopyWith<$Res> {
  factory $HitProductsSaleMonthCopyWith(HitProductsSaleMonth value,
          $Res Function(HitProductsSaleMonth) then) =
      _$HitProductsSaleMonthCopyWithImpl<$Res, HitProductsSaleMonth>;
  @useResult
  $Res call({int id, String key, String name, String image});
}

/// @nodoc
class _$HitProductsSaleMonthCopyWithImpl<$Res,
        $Val extends HitProductsSaleMonth>
    implements $HitProductsSaleMonthCopyWith<$Res> {
  _$HitProductsSaleMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitProductsSaleMonthImplCopyWith<$Res>
    implements $HitProductsSaleMonthCopyWith<$Res> {
  factory _$$HitProductsSaleMonthImplCopyWith(_$HitProductsSaleMonthImpl value,
          $Res Function(_$HitProductsSaleMonthImpl) then) =
      __$$HitProductsSaleMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, String name, String image});
}

/// @nodoc
class __$$HitProductsSaleMonthImplCopyWithImpl<$Res>
    extends _$HitProductsSaleMonthCopyWithImpl<$Res, _$HitProductsSaleMonthImpl>
    implements _$$HitProductsSaleMonthImplCopyWith<$Res> {
  __$$HitProductsSaleMonthImplCopyWithImpl(_$HitProductsSaleMonthImpl _value,
      $Res Function(_$HitProductsSaleMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$HitProductsSaleMonthImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HitProductsSaleMonthImpl implements _HitProductsSaleMonth {
  const _$HitProductsSaleMonthImpl(this.id, this.key, this.name, this.image);

  factory _$HitProductsSaleMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitProductsSaleMonthImplFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'HitProductsSaleMonth(id: $id, key: $key, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitProductsSaleMonthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitProductsSaleMonthImplCopyWith<_$HitProductsSaleMonthImpl>
      get copyWith =>
          __$$HitProductsSaleMonthImplCopyWithImpl<_$HitProductsSaleMonthImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitProductsSaleMonthImplToJson(
      this,
    );
  }
}

abstract class _HitProductsSaleMonth implements HitProductsSaleMonth {
  const factory _HitProductsSaleMonth(final int id, final String key,
      final String name, final String image) = _$HitProductsSaleMonthImpl;

  factory _HitProductsSaleMonth.fromJson(Map<String, dynamic> json) =
      _$HitProductsSaleMonthImpl.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$HitProductsSaleMonthImplCopyWith<_$HitProductsSaleMonthImpl>
      get copyWith => throw _privateConstructorUsedError;
}
