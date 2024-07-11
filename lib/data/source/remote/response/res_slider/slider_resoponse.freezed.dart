// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_resoponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderDataResponse _$SliderDataResponseFromJson(Map<String, dynamic> json) {
  return _SliderDataResponse.fromJson(json);
}

/// @nodoc
mixin _$SliderDataResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  DataInSlider? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderDataResponseCopyWith<SliderDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderDataResponseCopyWith<$Res> {
  factory $SliderDataResponseCopyWith(
          SliderDataResponse value, $Res Function(SliderDataResponse) then) =
      _$SliderDataResponseCopyWithImpl<$Res, SliderDataResponse>;
  @useResult
  $Res call({bool? success, String? message, int? code, DataInSlider? data});

  $DataInSliderCopyWith<$Res>? get data;
}

/// @nodoc
class _$SliderDataResponseCopyWithImpl<$Res, $Val extends SliderDataResponse>
    implements $SliderDataResponseCopyWith<$Res> {
  _$SliderDataResponseCopyWithImpl(this._value, this._then);

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
              as DataInSlider?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataInSliderCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataInSliderCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SliderDataResponseImplCopyWith<$Res>
    implements $SliderDataResponseCopyWith<$Res> {
  factory _$$SliderDataResponseImplCopyWith(_$SliderDataResponseImpl value,
          $Res Function(_$SliderDataResponseImpl) then) =
      __$$SliderDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, DataInSlider? data});

  @override
  $DataInSliderCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SliderDataResponseImplCopyWithImpl<$Res>
    extends _$SliderDataResponseCopyWithImpl<$Res, _$SliderDataResponseImpl>
    implements _$$SliderDataResponseImplCopyWith<$Res> {
  __$$SliderDataResponseImplCopyWithImpl(_$SliderDataResponseImpl _value,
      $Res Function(_$SliderDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SliderDataResponseImpl(
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
              as DataInSlider?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SliderDataResponseImpl implements _SliderDataResponse {
  const _$SliderDataResponseImpl(
      this.success, this.message, this.code, this.data);

  factory _$SliderDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderDataResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final DataInSlider? data;

  @override
  String toString() {
    return 'SliderDataResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderDataResponseImpl &&
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
  _$$SliderDataResponseImplCopyWith<_$SliderDataResponseImpl> get copyWith =>
      __$$SliderDataResponseImplCopyWithImpl<_$SliderDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderDataResponseImplToJson(
      this,
    );
  }
}

abstract class _SliderDataResponse implements SliderDataResponse {
  const factory _SliderDataResponse(final bool? success, final String? message,
      final int? code, final DataInSlider? data) = _$SliderDataResponseImpl;

  factory _SliderDataResponse.fromJson(Map<String, dynamic> json) =
      _$SliderDataResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  DataInSlider? get data;
  @override
  @JsonKey(ignore: true)
  _$$SliderDataResponseImplCopyWith<_$SliderDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataInSlider _$DataInSliderFromJson(Map<String, dynamic> json) {
  return _DataInSlider.fromJson(json);
}

/// @nodoc
mixin _$DataInSlider {
  List<InnerDataSlider>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataInSliderCopyWith<DataInSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataInSliderCopyWith<$Res> {
  factory $DataInSliderCopyWith(
          DataInSlider value, $Res Function(DataInSlider) then) =
      _$DataInSliderCopyWithImpl<$Res, DataInSlider>;
  @useResult
  $Res call({List<InnerDataSlider>? data});
}

/// @nodoc
class _$DataInSliderCopyWithImpl<$Res, $Val extends DataInSlider>
    implements $DataInSliderCopyWith<$Res> {
  _$DataInSliderCopyWithImpl(this._value, this._then);

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
              as List<InnerDataSlider>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataInSliderImplCopyWith<$Res>
    implements $DataInSliderCopyWith<$Res> {
  factory _$$DataInSliderImplCopyWith(
          _$DataInSliderImpl value, $Res Function(_$DataInSliderImpl) then) =
      __$$DataInSliderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<InnerDataSlider>? data});
}

/// @nodoc
class __$$DataInSliderImplCopyWithImpl<$Res>
    extends _$DataInSliderCopyWithImpl<$Res, _$DataInSliderImpl>
    implements _$$DataInSliderImplCopyWith<$Res> {
  __$$DataInSliderImplCopyWithImpl(
      _$DataInSliderImpl _value, $Res Function(_$DataInSliderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataInSliderImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InnerDataSlider>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$DataInSliderImpl implements _DataInSlider {
  const _$DataInSliderImpl(final List<InnerDataSlider>? data) : _data = data;

  factory _$DataInSliderImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataInSliderImplFromJson(json);

  final List<InnerDataSlider>? _data;
  @override
  List<InnerDataSlider>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataInSlider(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataInSliderImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataInSliderImplCopyWith<_$DataInSliderImpl> get copyWith =>
      __$$DataInSliderImplCopyWithImpl<_$DataInSliderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataInSliderImplToJson(
      this,
    );
  }
}

abstract class _DataInSlider implements DataInSlider {
  const factory _DataInSlider(final List<InnerDataSlider>? data) =
      _$DataInSliderImpl;

  factory _DataInSlider.fromJson(Map<String, dynamic> json) =
      _$DataInSliderImpl.fromJson;

  @override
  List<InnerDataSlider>? get data;
  @override
  @JsonKey(ignore: true)
  _$$DataInSliderImplCopyWith<_$DataInSliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InnerDataSlider _$InnerDataSliderFromJson(Map<String, dynamic> json) {
  return _InnerDataSlider.fromJson(json);
}

/// @nodoc
mixin _$InnerDataSlider {
  int? get id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageWeb => throw _privateConstructorUsedError;
  String? get imageMobileWeb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerDataSliderCopyWith<InnerDataSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerDataSliderCopyWith<$Res> {
  factory $InnerDataSliderCopyWith(
          InnerDataSlider value, $Res Function(InnerDataSlider) then) =
      _$InnerDataSliderCopyWithImpl<$Res, InnerDataSlider>;
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class _$InnerDataSliderCopyWithImpl<$Res, $Val extends InnerDataSlider>
    implements $InnerDataSliderCopyWith<$Res> {
  _$InnerDataSliderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWeb: freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      imageMobileWeb: freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnerDataSliderImplCopyWith<$Res>
    implements $InnerDataSliderCopyWith<$Res> {
  factory _$$InnerDataSliderImplCopyWith(_$InnerDataSliderImpl value,
          $Res Function(_$InnerDataSliderImpl) then) =
      __$$InnerDataSliderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class __$$InnerDataSliderImplCopyWithImpl<$Res>
    extends _$InnerDataSliderCopyWithImpl<$Res, _$InnerDataSliderImpl>
    implements _$$InnerDataSliderImplCopyWith<$Res> {
  __$$InnerDataSliderImplCopyWithImpl(
      _$InnerDataSliderImpl _value, $Res Function(_$InnerDataSliderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_$InnerDataSliderImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$InnerDataSliderImpl implements _InnerDataSlider {
  const _$InnerDataSliderImpl(
      this.id, this.link, this.title, this.imageWeb, this.imageMobileWeb);

  factory _$InnerDataSliderImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerDataSliderImplFromJson(json);

  @override
  final int? id;
  @override
  final String? link;
  @override
  final String? title;
  @override
  final String? imageWeb;
  @override
  final String? imageMobileWeb;

  @override
  String toString() {
    return 'InnerDataSlider(id: $id, link: $link, title: $title, imageWeb: $imageWeb, imageMobileWeb: $imageMobileWeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerDataSliderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageWeb, imageWeb) ||
                other.imageWeb == imageWeb) &&
            (identical(other.imageMobileWeb, imageMobileWeb) ||
                other.imageMobileWeb == imageMobileWeb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, link, title, imageWeb, imageMobileWeb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerDataSliderImplCopyWith<_$InnerDataSliderImpl> get copyWith =>
      __$$InnerDataSliderImplCopyWithImpl<_$InnerDataSliderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerDataSliderImplToJson(
      this,
    );
  }
}

abstract class _InnerDataSlider implements InnerDataSlider {
  const factory _InnerDataSlider(
      final int? id,
      final String? link,
      final String? title,
      final String? imageWeb,
      final String? imageMobileWeb) = _$InnerDataSliderImpl;

  factory _InnerDataSlider.fromJson(Map<String, dynamic> json) =
      _$InnerDataSliderImpl.fromJson;

  @override
  int? get id;
  @override
  String? get link;
  @override
  String? get title;
  @override
  String? get imageWeb;
  @override
  String? get imageMobileWeb;
  @override
  @JsonKey(ignore: true)
  _$$InnerDataSliderImplCopyWith<_$InnerDataSliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
