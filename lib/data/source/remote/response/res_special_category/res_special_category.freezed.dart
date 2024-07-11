// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'res_special_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialCategories _$SpecialCategoriesFromJson(Map<String, dynamic> json) {
  return _SpecialCategories.fromJson(json);
}

/// @nodoc
mixin _$SpecialCategories {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SpecialData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialCategoriesCopyWith<SpecialCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialCategoriesCopyWith<$Res> {
  factory $SpecialCategoriesCopyWith(
          SpecialCategories value, $Res Function(SpecialCategories) then) =
      _$SpecialCategoriesCopyWithImpl<$Res, SpecialCategories>;
  @useResult
  $Res call({bool? success, String? message, int? code, SpecialData? data});

  $SpecialDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpecialCategoriesCopyWithImpl<$Res, $Val extends SpecialCategories>
    implements $SpecialCategoriesCopyWith<$Res> {
  _$SpecialCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpecialData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecialDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SpecialDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialCategoriesImplCopyWith<$Res>
    implements $SpecialCategoriesCopyWith<$Res> {
  factory _$$SpecialCategoriesImplCopyWith(_$SpecialCategoriesImpl value,
          $Res Function(_$SpecialCategoriesImpl) then) =
      __$$SpecialCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, SpecialData? data});

  @override
  $SpecialDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SpecialCategoriesImplCopyWithImpl<$Res>
    extends _$SpecialCategoriesCopyWithImpl<$Res, _$SpecialCategoriesImpl>
    implements _$$SpecialCategoriesImplCopyWith<$Res> {
  __$$SpecialCategoriesImplCopyWithImpl(_$SpecialCategoriesImpl _value,
      $Res Function(_$SpecialCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SpecialCategoriesImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpecialData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialCategoriesImpl implements _SpecialCategories {
  const _$SpecialCategoriesImpl(
      this.success, this.message, this.code, this.data);

  factory _$SpecialCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialCategoriesImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SpecialData? data;

  @override
  String toString() {
    return 'SpecialCategories(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialCategoriesImpl &&
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
  _$$SpecialCategoriesImplCopyWith<_$SpecialCategoriesImpl> get copyWith =>
      __$$SpecialCategoriesImplCopyWithImpl<_$SpecialCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialCategoriesImplToJson(
      this,
    );
  }
}

abstract class _SpecialCategories implements SpecialCategories {
  const factory _SpecialCategories(final bool? success, final String? message,
      final int? code, final SpecialData? data) = _$SpecialCategoriesImpl;

  factory _SpecialCategories.fromJson(Map<String, dynamic> json) =
      _$SpecialCategoriesImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SpecialData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialCategoriesImplCopyWith<_$SpecialCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialData _$SpecialDataFromJson(Map<String, dynamic> json) {
  return _SpecialData.fromJson(json);
}

/// @nodoc
mixin _$SpecialData {
  List<SpecialInnerData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialDataCopyWith<SpecialData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialDataCopyWith<$Res> {
  factory $SpecialDataCopyWith(
          SpecialData value, $Res Function(SpecialData) then) =
      _$SpecialDataCopyWithImpl<$Res, SpecialData>;
  @useResult
  $Res call({List<SpecialInnerData>? data});
}

/// @nodoc
class _$SpecialDataCopyWithImpl<$Res, $Val extends SpecialData>
    implements $SpecialDataCopyWith<$Res> {
  _$SpecialDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecialInnerData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialDataImplCopyWith<$Res>
    implements $SpecialDataCopyWith<$Res> {
  factory _$$SpecialDataImplCopyWith(
          _$SpecialDataImpl value, $Res Function(_$SpecialDataImpl) then) =
      __$$SpecialDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpecialInnerData>? data});
}

/// @nodoc
class __$$SpecialDataImplCopyWithImpl<$Res>
    extends _$SpecialDataCopyWithImpl<$Res, _$SpecialDataImpl>
    implements _$$SpecialDataImplCopyWith<$Res> {
  __$$SpecialDataImplCopyWithImpl(
      _$SpecialDataImpl _value, $Res Function(_$SpecialDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SpecialDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecialInnerData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialDataImpl implements _SpecialData {
  const _$SpecialDataImpl(final List<SpecialInnerData>? data) : _data = data;

  factory _$SpecialDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialDataImplFromJson(json);

  final List<SpecialInnerData>? _data;
  @override
  List<SpecialInnerData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialDataImplCopyWith<_$SpecialDataImpl> get copyWith =>
      __$$SpecialDataImplCopyWithImpl<_$SpecialDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialDataImplToJson(
      this,
    );
  }
}

abstract class _SpecialData implements SpecialData {
  const factory _SpecialData(final List<SpecialInnerData>? data) =
      _$SpecialDataImpl;

  factory _SpecialData.fromJson(Map<String, dynamic> json) =
      _$SpecialDataImpl.fromJson;

  @override
  List<SpecialInnerData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialDataImplCopyWith<_$SpecialDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialInnerData _$SpecialInnerDataFromJson(Map<String, dynamic> json) {
  return _SpecialInnerData.fromJson(json);
}

/// @nodoc
mixin _$SpecialInnerData {
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialInnerDataCopyWith<SpecialInnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialInnerDataCopyWith<$Res> {
  factory $SpecialInnerDataCopyWith(
          SpecialInnerData value, $Res Function(SpecialInnerData) then) =
      _$SpecialInnerDataCopyWithImpl<$Res, SpecialInnerData>;
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class _$SpecialInnerDataCopyWithImpl<$Res, $Val extends SpecialInnerData>
    implements $SpecialInnerDataCopyWith<$Res> {
  _$SpecialInnerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialInnerDataImplCopyWith<$Res>
    implements $SpecialInnerDataCopyWith<$Res> {
  factory _$$SpecialInnerDataImplCopyWith(_$SpecialInnerDataImpl value,
          $Res Function(_$SpecialInnerDataImpl) then) =
      __$$SpecialInnerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class __$$SpecialInnerDataImplCopyWithImpl<$Res>
    extends _$SpecialInnerDataCopyWithImpl<$Res, _$SpecialInnerDataImpl>
    implements _$$SpecialInnerDataImplCopyWith<$Res> {
  __$$SpecialInnerDataImplCopyWithImpl(_$SpecialInnerDataImpl _value,
      $Res Function(_$SpecialInnerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$SpecialInnerDataImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialInnerDataImpl implements _SpecialInnerData {
  const _$SpecialInnerDataImpl(this.title, this.image, this.slug);

  factory _$SpecialInnerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialInnerDataImplFromJson(json);

  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'SpecialInnerData(title: $title, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialInnerDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialInnerDataImplCopyWith<_$SpecialInnerDataImpl> get copyWith =>
      __$$SpecialInnerDataImplCopyWithImpl<_$SpecialInnerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialInnerDataImplToJson(
      this,
    );
  }
}

abstract class _SpecialInnerData implements SpecialInnerData {
  const factory _SpecialInnerData(
          final String? title, final String? image, final String? slug) =
      _$SpecialInnerDataImpl;

  factory _SpecialInnerData.fromJson(Map<String, dynamic> json) =
      _$SpecialInnerDataImpl.fromJson;

  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$SpecialInnerDataImplCopyWith<_$SpecialInnerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
