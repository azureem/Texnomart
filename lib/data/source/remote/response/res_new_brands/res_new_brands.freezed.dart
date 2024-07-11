// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'res_new_brands.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewProducts _$NewProductsFromJson(Map<String, dynamic> json) {
  return _NewProducts.fromJson(json);
}

/// @nodoc
mixin _$NewProducts {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  NewProductsData2 get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProductsCopyWith<NewProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProductsCopyWith<$Res> {
  factory $NewProductsCopyWith(
          NewProducts value, $Res Function(NewProducts) then) =
      _$NewProductsCopyWithImpl<$Res, NewProducts>;
  @useResult
  $Res call({bool success, String message, int code, NewProductsData2 data});

  $NewProductsData2CopyWith<$Res> get data;
}

/// @nodoc
class _$NewProductsCopyWithImpl<$Res, $Val extends NewProducts>
    implements $NewProductsCopyWith<$Res> {
  _$NewProductsCopyWithImpl(this._value, this._then);

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
              as NewProductsData2,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewProductsData2CopyWith<$Res> get data {
    return $NewProductsData2CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewProductsImplCopyWith<$Res>
    implements $NewProductsCopyWith<$Res> {
  factory _$$NewProductsImplCopyWith(
          _$NewProductsImpl value, $Res Function(_$NewProductsImpl) then) =
      __$$NewProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int code, NewProductsData2 data});

  @override
  $NewProductsData2CopyWith<$Res> get data;
}

/// @nodoc
class __$$NewProductsImplCopyWithImpl<$Res>
    extends _$NewProductsCopyWithImpl<$Res, _$NewProductsImpl>
    implements _$$NewProductsImplCopyWith<$Res> {
  __$$NewProductsImplCopyWithImpl(
      _$NewProductsImpl _value, $Res Function(_$NewProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$NewProductsImpl(
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
              as NewProductsData2,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$NewProductsImpl implements _NewProducts {
  const _$NewProductsImpl(this.success, this.message, this.code, this.data);

  factory _$NewProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewProductsImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int code;
  @override
  final NewProductsData2 data;

  @override
  String toString() {
    return 'NewProducts(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProductsImpl &&
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
  _$$NewProductsImplCopyWith<_$NewProductsImpl> get copyWith =>
      __$$NewProductsImplCopyWithImpl<_$NewProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProductsImplToJson(
      this,
    );
  }
}

abstract class _NewProducts implements NewProducts {
  const factory _NewProducts(final bool success, final String message,
      final int code, final NewProductsData2 data) = _$NewProductsImpl;

  factory _NewProducts.fromJson(Map<String, dynamic> json) =
      _$NewProductsImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get code;
  @override
  NewProductsData2 get data;
  @override
  @JsonKey(ignore: true)
  _$$NewProductsImplCopyWith<_$NewProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewProductsData2 _$NewProductsData2FromJson(Map<String, dynamic> json) {
  return _NewProductsData2.fromJson(json);
}

/// @nodoc
mixin _$NewProductsData2 {
  List<NewProducts3> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProductsData2CopyWith<NewProductsData2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProductsData2CopyWith<$Res> {
  factory $NewProductsData2CopyWith(
          NewProductsData2 value, $Res Function(NewProductsData2) then) =
      _$NewProductsData2CopyWithImpl<$Res, NewProductsData2>;
  @useResult
  $Res call({List<NewProducts3> data});
}

/// @nodoc
class _$NewProductsData2CopyWithImpl<$Res, $Val extends NewProductsData2>
    implements $NewProductsData2CopyWith<$Res> {
  _$NewProductsData2CopyWithImpl(this._value, this._then);

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
              as List<NewProducts3>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewProductsData2ImplCopyWith<$Res>
    implements $NewProductsData2CopyWith<$Res> {
  factory _$$NewProductsData2ImplCopyWith(_$NewProductsData2Impl value,
          $Res Function(_$NewProductsData2Impl) then) =
      __$$NewProductsData2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewProducts3> data});
}

/// @nodoc
class __$$NewProductsData2ImplCopyWithImpl<$Res>
    extends _$NewProductsData2CopyWithImpl<$Res, _$NewProductsData2Impl>
    implements _$$NewProductsData2ImplCopyWith<$Res> {
  __$$NewProductsData2ImplCopyWithImpl(_$NewProductsData2Impl _value,
      $Res Function(_$NewProductsData2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NewProductsData2Impl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewProducts3>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$NewProductsData2Impl implements _NewProductsData2 {
  const _$NewProductsData2Impl(final List<NewProducts3> data) : _data = data;

  factory _$NewProductsData2Impl.fromJson(Map<String, dynamic> json) =>
      _$$NewProductsData2ImplFromJson(json);

  final List<NewProducts3> _data;
  @override
  List<NewProducts3> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NewProductsData2(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProductsData2Impl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewProductsData2ImplCopyWith<_$NewProductsData2Impl> get copyWith =>
      __$$NewProductsData2ImplCopyWithImpl<_$NewProductsData2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProductsData2ImplToJson(
      this,
    );
  }
}

abstract class _NewProductsData2 implements NewProductsData2 {
  const factory _NewProductsData2(final List<NewProducts3> data) =
      _$NewProductsData2Impl;

  factory _NewProductsData2.fromJson(Map<String, dynamic> json) =
      _$NewProductsData2Impl.fromJson;

  @override
  List<NewProducts3> get data;
  @override
  @JsonKey(ignore: true)
  _$$NewProductsData2ImplCopyWith<_$NewProductsData2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewProducts3 _$NewProducts3FromJson(Map<String, dynamic> json) {
  return _NewProducts3.fromJson(json);
}

/// @nodoc
mixin _$NewProducts3 {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get availability =>
      throw _privateConstructorUsedError; //   String axiomMonthlyPrice,
  int get salePrice => throw _privateConstructorUsedError; // String oldPrice,
  int get finishPrice => throw _privateConstructorUsedError;
  int get discountPrice => throw _privateConstructorUsedError;
  int get reviewsCount =>
      throw _privateConstructorUsedError; // String reviewsAverage,
  int get allCount =>
      throw _privateConstructorUsedError; // List<String> stickers,
  List<NewProducts4> get saleMonths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProducts3CopyWith<NewProducts3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProducts3CopyWith<$Res> {
  factory $NewProducts3CopyWith(
          NewProducts3 value, $Res Function(NewProducts3) then) =
      _$NewProducts3CopyWithImpl<$Res, NewProducts3>;
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
      List<NewProducts4> saleMonths});
}

/// @nodoc
class _$NewProducts3CopyWithImpl<$Res, $Val extends NewProducts3>
    implements $NewProducts3CopyWith<$Res> {
  _$NewProducts3CopyWithImpl(this._value, this._then);

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
      saleMonths: null == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<NewProducts4>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewProducts3ImplCopyWith<$Res>
    implements $NewProducts3CopyWith<$Res> {
  factory _$$NewProducts3ImplCopyWith(
          _$NewProducts3Impl value, $Res Function(_$NewProducts3Impl) then) =
      __$$NewProducts3ImplCopyWithImpl<$Res>;
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
      List<NewProducts4> saleMonths});
}

/// @nodoc
class __$$NewProducts3ImplCopyWithImpl<$Res>
    extends _$NewProducts3CopyWithImpl<$Res, _$NewProducts3Impl>
    implements _$$NewProducts3ImplCopyWith<$Res> {
  __$$NewProducts3ImplCopyWithImpl(
      _$NewProducts3Impl _value, $Res Function(_$NewProducts3Impl) _then)
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
    Object? saleMonths = null,
  }) {
    return _then(_$NewProducts3Impl(
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
      null == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<NewProducts4>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$NewProducts3Impl implements _NewProducts3 {
  const _$NewProducts3Impl(
      this.id,
      this.name,
      this.image,
      this.availability,
      this.salePrice,
      this.finishPrice,
      this.discountPrice,
      this.reviewsCount,
      this.allCount,
      final List<NewProducts4> saleMonths)
      : _saleMonths = saleMonths;

  factory _$NewProducts3Impl.fromJson(Map<String, dynamic> json) =>
      _$$NewProducts3ImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String availability;
//   String axiomMonthlyPrice,
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
// List<String> stickers,
  final List<NewProducts4> _saleMonths;
// List<String> stickers,
  @override
  List<NewProducts4> get saleMonths {
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleMonths);
  }

  @override
  String toString() {
    return 'NewProducts3(id: $id, name: $name, image: $image, availability: $availability, salePrice: $salePrice, finishPrice: $finishPrice, discountPrice: $discountPrice, reviewsCount: $reviewsCount, allCount: $allCount, saleMonths: $saleMonths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProducts3Impl &&
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
      const DeepCollectionEquality().hash(_saleMonths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewProducts3ImplCopyWith<_$NewProducts3Impl> get copyWith =>
      __$$NewProducts3ImplCopyWithImpl<_$NewProducts3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProducts3ImplToJson(
      this,
    );
  }
}

abstract class _NewProducts3 implements NewProducts3 {
  const factory _NewProducts3(
      final int id,
      final String name,
      final String image,
      final String availability,
      final int salePrice,
      final int finishPrice,
      final int discountPrice,
      final int reviewsCount,
      final int allCount,
      final List<NewProducts4> saleMonths) = _$NewProducts3Impl;

  factory _NewProducts3.fromJson(Map<String, dynamic> json) =
      _$NewProducts3Impl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get availability;
  @override //   String axiomMonthlyPrice,
  int get salePrice;
  @override // String oldPrice,
  int get finishPrice;
  @override
  int get discountPrice;
  @override
  int get reviewsCount;
  @override // String reviewsAverage,
  int get allCount;
  @override // List<String> stickers,
  List<NewProducts4> get saleMonths;
  @override
  @JsonKey(ignore: true)
  _$$NewProducts3ImplCopyWith<_$NewProducts3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewProducts4 _$NewProducts4FromJson(Map<String, dynamic> json) {
  return _NewProducts4.fromJson(json);
}

/// @nodoc
mixin _$NewProducts4 {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProducts4CopyWith<NewProducts4> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProducts4CopyWith<$Res> {
  factory $NewProducts4CopyWith(
          NewProducts4 value, $Res Function(NewProducts4) then) =
      _$NewProducts4CopyWithImpl<$Res, NewProducts4>;
  @useResult
  $Res call({int id, String key, String name, String image});
}

/// @nodoc
class _$NewProducts4CopyWithImpl<$Res, $Val extends NewProducts4>
    implements $NewProducts4CopyWith<$Res> {
  _$NewProducts4CopyWithImpl(this._value, this._then);

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
abstract class _$$NewProducts4ImplCopyWith<$Res>
    implements $NewProducts4CopyWith<$Res> {
  factory _$$NewProducts4ImplCopyWith(
          _$NewProducts4Impl value, $Res Function(_$NewProducts4Impl) then) =
      __$$NewProducts4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, String name, String image});
}

/// @nodoc
class __$$NewProducts4ImplCopyWithImpl<$Res>
    extends _$NewProducts4CopyWithImpl<$Res, _$NewProducts4Impl>
    implements _$$NewProducts4ImplCopyWith<$Res> {
  __$$NewProducts4ImplCopyWithImpl(
      _$NewProducts4Impl _value, $Res Function(_$NewProducts4Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$NewProducts4Impl(
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
class _$NewProducts4Impl implements _NewProducts4 {
  const _$NewProducts4Impl(this.id, this.key, this.name, this.image);

  factory _$NewProducts4Impl.fromJson(Map<String, dynamic> json) =>
      _$$NewProducts4ImplFromJson(json);

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
    return 'NewProducts4(id: $id, key: $key, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProducts4Impl &&
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
  _$$NewProducts4ImplCopyWith<_$NewProducts4Impl> get copyWith =>
      __$$NewProducts4ImplCopyWithImpl<_$NewProducts4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProducts4ImplToJson(
      this,
    );
  }
}

abstract class _NewProducts4 implements NewProducts4 {
  const factory _NewProducts4(final int id, final String key, final String name,
      final String image) = _$NewProducts4Impl;

  factory _NewProducts4.fromJson(Map<String, dynamic> json) =
      _$NewProducts4Impl.fromJson;

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
  _$$NewProducts4ImplCopyWith<_$NewProducts4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
