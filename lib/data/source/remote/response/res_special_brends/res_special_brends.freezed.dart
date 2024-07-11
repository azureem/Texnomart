// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'res_special_brends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialBrends _$SpecialBrendsFromJson(Map<String, dynamic> json) {
  return _SpecialBrends.fromJson(json);
}

/// @nodoc
mixin _$SpecialBrends {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SpecialBrendsData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialBrendsCopyWith<SpecialBrends> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialBrendsCopyWith<$Res> {
  factory $SpecialBrendsCopyWith(
          SpecialBrends value, $Res Function(SpecialBrends) then) =
      _$SpecialBrendsCopyWithImpl<$Res, SpecialBrends>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, SpecialBrendsData? data});

  $SpecialBrendsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpecialBrendsCopyWithImpl<$Res, $Val extends SpecialBrends>
    implements $SpecialBrendsCopyWith<$Res> {
  _$SpecialBrendsCopyWithImpl(this._value, this._then);

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
              as SpecialBrendsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecialBrendsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SpecialBrendsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialBrendsImplCopyWith<$Res>
    implements $SpecialBrendsCopyWith<$Res> {
  factory _$$SpecialBrendsImplCopyWith(
          _$SpecialBrendsImpl value, $Res Function(_$SpecialBrendsImpl) then) =
      __$$SpecialBrendsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, SpecialBrendsData? data});

  @override
  $SpecialBrendsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SpecialBrendsImplCopyWithImpl<$Res>
    extends _$SpecialBrendsCopyWithImpl<$Res, _$SpecialBrendsImpl>
    implements _$$SpecialBrendsImplCopyWith<$Res> {
  __$$SpecialBrendsImplCopyWithImpl(
      _$SpecialBrendsImpl _value, $Res Function(_$SpecialBrendsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SpecialBrendsImpl(
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
              as SpecialBrendsData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialBrendsImpl implements _SpecialBrends {
  const _$SpecialBrendsImpl(this.success, this.message, this.code, this.data);

  factory _$SpecialBrendsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialBrendsImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SpecialBrendsData? data;

  @override
  String toString() {
    return 'SpecialBrends(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialBrendsImpl &&
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
  _$$SpecialBrendsImplCopyWith<_$SpecialBrendsImpl> get copyWith =>
      __$$SpecialBrendsImplCopyWithImpl<_$SpecialBrendsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialBrendsImplToJson(
      this,
    );
  }
}

abstract class _SpecialBrends implements SpecialBrends {
  const factory _SpecialBrends(final bool? success, final String? message,
      final int? code, final SpecialBrendsData? data) = _$SpecialBrendsImpl;

  factory _SpecialBrends.fromJson(Map<String, dynamic> json) =
      _$SpecialBrendsImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SpecialBrendsData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialBrendsImplCopyWith<_$SpecialBrendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialBrendsData _$SpecialBrendsDataFromJson(Map<String, dynamic> json) {
  return _SpecialBrendsData.fromJson(json);
}

/// @nodoc
mixin _$SpecialBrendsData {
  List<SpecialBrendsData2>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialBrendsDataCopyWith<SpecialBrendsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialBrendsDataCopyWith<$Res> {
  factory $SpecialBrendsDataCopyWith(
          SpecialBrendsData value, $Res Function(SpecialBrendsData) then) =
      _$SpecialBrendsDataCopyWithImpl<$Res, SpecialBrendsData>;
  @useResult
  $Res call({List<SpecialBrendsData2>? data});
}

/// @nodoc
class _$SpecialBrendsDataCopyWithImpl<$Res, $Val extends SpecialBrendsData>
    implements $SpecialBrendsDataCopyWith<$Res> {
  _$SpecialBrendsDataCopyWithImpl(this._value, this._then);

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
              as List<SpecialBrendsData2>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialBrendsDataImplCopyWith<$Res>
    implements $SpecialBrendsDataCopyWith<$Res> {
  factory _$$SpecialBrendsDataImplCopyWith(_$SpecialBrendsDataImpl value,
          $Res Function(_$SpecialBrendsDataImpl) then) =
      __$$SpecialBrendsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpecialBrendsData2>? data});
}

/// @nodoc
class __$$SpecialBrendsDataImplCopyWithImpl<$Res>
    extends _$SpecialBrendsDataCopyWithImpl<$Res, _$SpecialBrendsDataImpl>
    implements _$$SpecialBrendsDataImplCopyWith<$Res> {
  __$$SpecialBrendsDataImplCopyWithImpl(_$SpecialBrendsDataImpl _value,
      $Res Function(_$SpecialBrendsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SpecialBrendsDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecialBrendsData2>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialBrendsDataImpl implements _SpecialBrendsData {
  const _$SpecialBrendsDataImpl(final List<SpecialBrendsData2>? data)
      : _data = data;

  factory _$SpecialBrendsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialBrendsDataImplFromJson(json);

  final List<SpecialBrendsData2>? _data;
  @override
  List<SpecialBrendsData2>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialBrendsData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialBrendsDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialBrendsDataImplCopyWith<_$SpecialBrendsDataImpl> get copyWith =>
      __$$SpecialBrendsDataImplCopyWithImpl<_$SpecialBrendsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialBrendsDataImplToJson(
      this,
    );
  }
}

abstract class _SpecialBrendsData implements SpecialBrendsData {
  const factory _SpecialBrendsData(final List<SpecialBrendsData2>? data) =
      _$SpecialBrendsDataImpl;

  factory _SpecialBrendsData.fromJson(Map<String, dynamic> json) =
      _$SpecialBrendsDataImpl.fromJson;

  @override
  List<SpecialBrendsData2>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialBrendsDataImplCopyWith<_$SpecialBrendsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialBrendsData2 _$SpecialBrendsData2FromJson(Map<String, dynamic> json) {
  return _SpecialBrendsData2.fromJson(json);
}

/// @nodoc
mixin _$SpecialBrendsData2 {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageAlt => throw _privateConstructorUsedError;
  SpecialBrendsInner? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialBrendsData2CopyWith<SpecialBrendsData2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialBrendsData2CopyWith<$Res> {
  factory $SpecialBrendsData2CopyWith(
          SpecialBrendsData2 value, $Res Function(SpecialBrendsData2) then) =
      _$SpecialBrendsData2CopyWithImpl<$Res, SpecialBrendsData2>;
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? image,
      String? imageAlt,
      SpecialBrendsInner? meta});

  $SpecialBrendsInnerCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SpecialBrendsData2CopyWithImpl<$Res, $Val extends SpecialBrendsData2>
    implements $SpecialBrendsData2CopyWith<$Res> {
  _$SpecialBrendsData2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? imageAlt = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SpecialBrendsInner?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecialBrendsInnerCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $SpecialBrendsInnerCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialBrendsData2ImplCopyWith<$Res>
    implements $SpecialBrendsData2CopyWith<$Res> {
  factory _$$SpecialBrendsData2ImplCopyWith(_$SpecialBrendsData2Impl value,
          $Res Function(_$SpecialBrendsData2Impl) then) =
      __$$SpecialBrendsData2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? image,
      String? imageAlt,
      SpecialBrendsInner? meta});

  @override
  $SpecialBrendsInnerCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$SpecialBrendsData2ImplCopyWithImpl<$Res>
    extends _$SpecialBrendsData2CopyWithImpl<$Res, _$SpecialBrendsData2Impl>
    implements _$$SpecialBrendsData2ImplCopyWith<$Res> {
  __$$SpecialBrendsData2ImplCopyWithImpl(_$SpecialBrendsData2Impl _value,
      $Res Function(_$SpecialBrendsData2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? imageAlt = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$SpecialBrendsData2Impl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SpecialBrendsInner?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialBrendsData2Impl implements _SpecialBrendsData2 {
  const _$SpecialBrendsData2Impl(
      this.name, this.slug, this.image, this.imageAlt, this.meta);

  factory _$SpecialBrendsData2Impl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialBrendsData2ImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? image;
  @override
  final String? imageAlt;
  @override
  final SpecialBrendsInner? meta;

  @override
  String toString() {
    return 'SpecialBrendsData2(name: $name, slug: $slug, image: $image, imageAlt: $imageAlt, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialBrendsData2Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageAlt, imageAlt) ||
                other.imageAlt == imageAlt) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, slug, image, imageAlt, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialBrendsData2ImplCopyWith<_$SpecialBrendsData2Impl> get copyWith =>
      __$$SpecialBrendsData2ImplCopyWithImpl<_$SpecialBrendsData2Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialBrendsData2ImplToJson(
      this,
    );
  }
}

abstract class _SpecialBrendsData2 implements SpecialBrendsData2 {
  const factory _SpecialBrendsData2(
      final String? name,
      final String? slug,
      final String? image,
      final String? imageAlt,
      final SpecialBrendsInner? meta) = _$SpecialBrendsData2Impl;

  factory _SpecialBrendsData2.fromJson(Map<String, dynamic> json) =
      _$SpecialBrendsData2Impl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get image;
  @override
  String? get imageAlt;
  @override
  SpecialBrendsInner? get meta;
  @override
  @JsonKey(ignore: true)
  _$$SpecialBrendsData2ImplCopyWith<_$SpecialBrendsData2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialBrendsInner _$SpecialBrendsInnerFromJson(Map<String, dynamic> json) {
  return _SpecialBrendsInner.fromJson(json);
}

/// @nodoc
mixin _$SpecialBrendsInner {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialBrendsInnerCopyWith<SpecialBrendsInner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialBrendsInnerCopyWith<$Res> {
  factory $SpecialBrendsInnerCopyWith(
          SpecialBrendsInner value, $Res Function(SpecialBrendsInner) then) =
      _$SpecialBrendsInnerCopyWithImpl<$Res, SpecialBrendsInner>;
  @useResult
  $Res call({String? title, String? description, String? keywords});
}

/// @nodoc
class _$SpecialBrendsInnerCopyWithImpl<$Res, $Val extends SpecialBrendsInner>
    implements $SpecialBrendsInnerCopyWith<$Res> {
  _$SpecialBrendsInnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialBrendsInnerImplCopyWith<$Res>
    implements $SpecialBrendsInnerCopyWith<$Res> {
  factory _$$SpecialBrendsInnerImplCopyWith(_$SpecialBrendsInnerImpl value,
          $Res Function(_$SpecialBrendsInnerImpl) then) =
      __$$SpecialBrendsInnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, String? keywords});
}

/// @nodoc
class __$$SpecialBrendsInnerImplCopyWithImpl<$Res>
    extends _$SpecialBrendsInnerCopyWithImpl<$Res, _$SpecialBrendsInnerImpl>
    implements _$$SpecialBrendsInnerImplCopyWith<$Res> {
  __$$SpecialBrendsInnerImplCopyWithImpl(_$SpecialBrendsInnerImpl _value,
      $Res Function(_$SpecialBrendsInnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_$SpecialBrendsInnerImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialBrendsInnerImpl implements _SpecialBrendsInner {
  const _$SpecialBrendsInnerImpl(this.title, this.description, this.keywords);

  factory _$SpecialBrendsInnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialBrendsInnerImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? keywords;

  @override
  String toString() {
    return 'SpecialBrendsInner(title: $title, description: $description, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialBrendsInnerImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, keywords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialBrendsInnerImplCopyWith<_$SpecialBrendsInnerImpl> get copyWith =>
      __$$SpecialBrendsInnerImplCopyWithImpl<_$SpecialBrendsInnerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialBrendsInnerImplToJson(
      this,
    );
  }
}

abstract class _SpecialBrendsInner implements SpecialBrendsInner {
  const factory _SpecialBrendsInner(
      final String? title,
      final String? description,
      final String? keywords) = _$SpecialBrendsInnerImpl;

  factory _SpecialBrendsInner.fromJson(Map<String, dynamic> json) =
      _$SpecialBrendsInnerImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get keywords;
  @override
  @JsonKey(ignore: true)
  _$$SpecialBrendsInnerImplCopyWith<_$SpecialBrendsInnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
