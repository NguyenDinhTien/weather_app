// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationApi _$LocationApiFromJson(Map<String, dynamic> json) {
  return _LocationApi.fromJson(json);
}

/// @nodoc
mixin _$LocationApi {
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationApiCopyWith<LocationApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationApiCopyWith<$Res> {
  factory $LocationApiCopyWith(
          LocationApi value, $Res Function(LocationApi) then) =
      _$LocationApiCopyWithImpl<$Res>;
  $Res call({String name, String state, double lat, double lon});
}

/// @nodoc
class _$LocationApiCopyWithImpl<$Res> implements $LocationApiCopyWith<$Res> {
  _$LocationApiCopyWithImpl(this._value, this._then);

  final LocationApi _value;
  // ignore: unused_field
  final $Res Function(LocationApi) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? state = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationApiCopyWith<$Res>
    implements $LocationApiCopyWith<$Res> {
  factory _$$_LocationApiCopyWith(
          _$_LocationApi value, $Res Function(_$_LocationApi) then) =
      __$$_LocationApiCopyWithImpl<$Res>;
  @override
  $Res call({String name, String state, double lat, double lon});
}

/// @nodoc
class __$$_LocationApiCopyWithImpl<$Res> extends _$LocationApiCopyWithImpl<$Res>
    implements _$$_LocationApiCopyWith<$Res> {
  __$$_LocationApiCopyWithImpl(
      _$_LocationApi _value, $Res Function(_$_LocationApi) _then)
      : super(_value, (v) => _then(v as _$_LocationApi));

  @override
  _$_LocationApi get _value => super._value as _$_LocationApi;

  @override
  $Res call({
    Object? name = freezed,
    Object? state = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_LocationApi(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationApi implements _LocationApi {
  _$_LocationApi(
      {required this.name,
      required this.state,
      required this.lat,
      required this.lon});

  factory _$_LocationApi.fromJson(Map<String, dynamic> json) =>
      _$$_LocationApiFromJson(json);

  @override
  final String name;
  @override
  final String state;
  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'LocationApi(name: $name, state: $state, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationApi &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$$_LocationApiCopyWith<_$_LocationApi> get copyWith =>
      __$$_LocationApiCopyWithImpl<_$_LocationApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationApiToJson(this);
  }
}

abstract class _LocationApi implements LocationApi {
  factory _LocationApi(
      {required final String name,
      required final String state,
      required final double lat,
      required final double lon}) = _$_LocationApi;

  factory _LocationApi.fromJson(Map<String, dynamic> json) =
      _$_LocationApi.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationApiCopyWith<_$_LocationApi> get copyWith =>
      throw _privateConstructorUsedError;
}
