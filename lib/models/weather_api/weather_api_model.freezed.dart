// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherApi _$WeatherApiFromJson(Map<String, dynamic> json) {
  return _WeatherApi.fromJson(json);
}

/// @nodoc
mixin _$WeatherApi {
  Main get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  Wind get wind => throw _privateConstructorUsedError;
  Sys get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'coord')
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt')
  @TimesConverterFull()
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherApiCopyWith<WeatherApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherApiCopyWith<$Res> {
  factory $WeatherApiCopyWith(
          WeatherApi value, $Res Function(WeatherApi) then) =
      _$WeatherApiCopyWithImpl<$Res>;
  $Res call(
      {Main main,
      List<Weather> weather,
      Wind wind,
      Sys sys,
      @JsonKey(name: 'coord') Location location,
      @JsonKey(name: 'name') String cityName,
      @JsonKey(name: 'dt') @TimesConverterFull() String dateTime});

  $MainCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $SysCopyWith<$Res> get sys;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$WeatherApiCopyWithImpl<$Res> implements $WeatherApiCopyWith<$Res> {
  _$WeatherApiCopyWithImpl(this._value, this._then);

  final WeatherApi _value;
  // ignore: unused_field
  final $Res Function(WeatherApi) _then;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
    Object? sys = freezed,
    Object? location = freezed,
    Object? cityName = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $SysCopyWith<$Res> get sys {
    return $SysCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value));
    });
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherApiCopyWith<$Res>
    implements $WeatherApiCopyWith<$Res> {
  factory _$$_WeatherApiCopyWith(
          _$_WeatherApi value, $Res Function(_$_WeatherApi) then) =
      __$$_WeatherApiCopyWithImpl<$Res>;
  @override
  $Res call(
      {Main main,
      List<Weather> weather,
      Wind wind,
      Sys sys,
      @JsonKey(name: 'coord') Location location,
      @JsonKey(name: 'name') String cityName,
      @JsonKey(name: 'dt') @TimesConverterFull() String dateTime});

  @override
  $MainCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $SysCopyWith<$Res> get sys;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_WeatherApiCopyWithImpl<$Res> extends _$WeatherApiCopyWithImpl<$Res>
    implements _$$_WeatherApiCopyWith<$Res> {
  __$$_WeatherApiCopyWithImpl(
      _$_WeatherApi _value, $Res Function(_$_WeatherApi) _then)
      : super(_value, (v) => _then(v as _$_WeatherApi));

  @override
  _$_WeatherApi get _value => super._value as _$_WeatherApi;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
    Object? sys = freezed,
    Object? location = freezed,
    Object? cityName = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_WeatherApi(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherApi implements _WeatherApi {
  const _$_WeatherApi(
      {required this.main,
      required final List<Weather> weather,
      required this.wind,
      required this.sys,
      @JsonKey(name: 'coord') required this.location,
      @JsonKey(name: 'name') required this.cityName,
      @JsonKey(name: 'dt') @TimesConverterFull() required this.dateTime})
      : _weather = weather;

  factory _$_WeatherApi.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherApiFromJson(json);

  @override
  final Main main;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final Wind wind;
  @override
  final Sys sys;
  @override
  @JsonKey(name: 'coord')
  final Location location;
  @override
  @JsonKey(name: 'name')
  final String cityName;
  @override
  @JsonKey(name: 'dt')
  @TimesConverterFull()
  final String dateTime;

  @override
  String toString() {
    return 'WeatherApi(main: $main, weather: $weather, wind: $wind, sys: $sys, location: $location, cityName: $cityName, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherApi &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.wind, wind) &&
            const DeepCollectionEquality().equals(other.sys, sys) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(wind),
      const DeepCollectionEquality().hash(sys),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherApiCopyWith<_$_WeatherApi> get copyWith =>
      __$$_WeatherApiCopyWithImpl<_$_WeatherApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherApiToJson(this);
  }
}

abstract class _WeatherApi implements WeatherApi {
  const factory _WeatherApi(
      {required final Main main,
      required final List<Weather> weather,
      required final Wind wind,
      required final Sys sys,
      @JsonKey(name: 'coord')
          required final Location location,
      @JsonKey(name: 'name')
          required final String cityName,
      @JsonKey(name: 'dt')
      @TimesConverterFull()
          required final String dateTime}) = _$_WeatherApi;

  factory _WeatherApi.fromJson(Map<String, dynamic> json) =
      _$_WeatherApi.fromJson;

  @override
  Main get main => throw _privateConstructorUsedError;
  @override
  List<Weather> get weather => throw _privateConstructorUsedError;
  @override
  Wind get wind => throw _privateConstructorUsedError;
  @override
  Sys get sys => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'coord')
  Location get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get cityName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'dt')
  @TimesConverterFull()
  String get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherApiCopyWith<_$_WeatherApi> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  double get temp => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res>;
  $Res call(
      {double temp,
      double humidity,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class _$MainCopyWithImpl<$Res> implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  final Main _value;
  // ignore: unused_field
  final $Res Function(Main) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$_MainCopyWith(_$_Main value, $Res Function(_$_Main) then) =
      __$$_MainCopyWithImpl<$Res>;
  @override
  $Res call(
      {double temp,
      double humidity,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class __$$_MainCopyWithImpl<$Res> extends _$MainCopyWithImpl<$Res>
    implements _$$_MainCopyWith<$Res> {
  __$$_MainCopyWithImpl(_$_Main _value, $Res Function(_$_Main) _then)
      : super(_value, (v) => _then(v as _$_Main));

  @override
  _$_Main get _value => super._value as _$_Main;

  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
  }) {
    return _then(_$_Main(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Main implements _Main {
  _$_Main(
      {required this.temp,
      required this.humidity,
      @JsonKey(name: 'temp_min') required this.tempMin,
      @JsonKey(name: 'temp_max') required this.tempMax});

  factory _$_Main.fromJson(Map<String, dynamic> json) => _$$_MainFromJson(json);

  @override
  final double temp;
  @override
  final double humidity;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;

  @override
  String toString() {
    return 'Main(temp: $temp, humidity: $humidity, tempMin: $tempMin, tempMax: $tempMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Main &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(tempMin),
      const DeepCollectionEquality().hash(tempMax));

  @JsonKey(ignore: true)
  @override
  _$$_MainCopyWith<_$_Main> get copyWith =>
      __$$_MainCopyWithImpl<_$_Main>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainToJson(this);
  }
}

abstract class _Main implements Main {
  factory _Main(
      {required final double temp,
      required final double humidity,
      @JsonKey(name: 'temp_min') required final double tempMin,
      @JsonKey(name: 'temp_max') required final double tempMax}) = _$_Main;

  factory _Main.fromJson(Map<String, dynamic> json) = _$_Main.fromJson;

  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  double get humidity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainCopyWith<_$_Main> get copyWith => throw _privateConstructorUsedError;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
mixin _$Wind {
  double get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindCopyWith<Wind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res>;
  $Res call({double speed});
}

/// @nodoc
class _$WindCopyWithImpl<$Res> implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  final Wind _value;
  // ignore: unused_field
  final $Res Function(Wind) _then;

  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$$_WindCopyWith(_$_Wind value, $Res Function(_$_Wind) then) =
      __$$_WindCopyWithImpl<$Res>;
  @override
  $Res call({double speed});
}

/// @nodoc
class __$$_WindCopyWithImpl<$Res> extends _$WindCopyWithImpl<$Res>
    implements _$$_WindCopyWith<$Res> {
  __$$_WindCopyWithImpl(_$_Wind _value, $Res Function(_$_Wind) _then)
      : super(_value, (v) => _then(v as _$_Wind));

  @override
  _$_Wind get _value => super._value as _$_Wind;

  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_$_Wind(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wind implements _Wind {
  _$_Wind({required this.speed});

  factory _$_Wind.fromJson(Map<String, dynamic> json) => _$$_WindFromJson(json);

  @override
  final double speed;

  @override
  String toString() {
    return 'Wind(speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wind &&
            const DeepCollectionEquality().equals(other.speed, speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(speed));

  @JsonKey(ignore: true)
  @override
  _$$_WindCopyWith<_$_Wind> get copyWith =>
      __$$_WindCopyWithImpl<_$_Wind>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindToJson(this);
  }
}

abstract class _Wind implements Wind {
  factory _Wind({required final double speed}) = _$_Wind;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$_Wind.fromJson;

  @override
  double get speed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WindCopyWith<_$_Wind> get copyWith => throw _privateConstructorUsedError;
}

Sys _$SysFromJson(Map<String, dynamic> json) {
  return _Sys.fromJson(json);
}

/// @nodoc
mixin _$Sys {
  @TimesConverter()
  String get sunrise => throw _privateConstructorUsedError;
  @TimesConverter()
  String get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysCopyWith<Sys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysCopyWith<$Res> {
  factory $SysCopyWith(Sys value, $Res Function(Sys) then) =
      _$SysCopyWithImpl<$Res>;
  $Res call(
      {@TimesConverter() String sunrise, @TimesConverter() String sunset});
}

/// @nodoc
class _$SysCopyWithImpl<$Res> implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._value, this._then);

  final Sys _value;
  // ignore: unused_field
  final $Res Function(Sys) _then;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SysCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$$_SysCopyWith(_$_Sys value, $Res Function(_$_Sys) then) =
      __$$_SysCopyWithImpl<$Res>;
  @override
  $Res call(
      {@TimesConverter() String sunrise, @TimesConverter() String sunset});
}

/// @nodoc
class __$$_SysCopyWithImpl<$Res> extends _$SysCopyWithImpl<$Res>
    implements _$$_SysCopyWith<$Res> {
  __$$_SysCopyWithImpl(_$_Sys _value, $Res Function(_$_Sys) _then)
      : super(_value, (v) => _then(v as _$_Sys));

  @override
  _$_Sys get _value => super._value as _$_Sys;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$_Sys(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sys implements _Sys {
  _$_Sys(
      {@TimesConverter() required this.sunrise,
      @TimesConverter() required this.sunset});

  factory _$_Sys.fromJson(Map<String, dynamic> json) => _$$_SysFromJson(json);

  @override
  @TimesConverter()
  final String sunrise;
  @override
  @TimesConverter()
  final String sunset;

  @override
  String toString() {
    return 'Sys(sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sys &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset));

  @JsonKey(ignore: true)
  @override
  _$$_SysCopyWith<_$_Sys> get copyWith =>
      __$$_SysCopyWithImpl<_$_Sys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SysToJson(this);
  }
}

abstract class _Sys implements Sys {
  factory _Sys(
      {@TimesConverter() required final String sunrise,
      @TimesConverter() required final String sunset}) = _$_Sys;

  factory _Sys.fromJson(Map<String, dynamic> json) = _$_Sys.fromJson;

  @override
  @TimesConverter()
  String get sunrise => throw _privateConstructorUsedError;
  @override
  @TimesConverter()
  String get sunset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SysCopyWith<_$_Sys> get copyWith => throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String get main =>
      throw _privateConstructorUsedError; // required String icon,
  String get description => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: WeatherIconApi.unknown)
  WeatherIconApi get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {String main,
      String description,
      @JsonKey(unknownEnumValue: WeatherIconApi.unknown) WeatherIconApi icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherIconApi,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {String main,
      String description,
      @JsonKey(unknownEnumValue: WeatherIconApi.unknown) WeatherIconApi icon});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, (v) => _then(v as _$_Weather));

  @override
  _$_Weather get _value => super._value as _$_Weather;

  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_Weather(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherIconApi,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  _$_Weather(
      {required this.main,
      required this.description,
      @JsonKey(unknownEnumValue: WeatherIconApi.unknown) required this.icon});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final String main;
// required String icon,
  @override
  final String description;
  @override
  @JsonKey(unknownEnumValue: WeatherIconApi.unknown)
  final WeatherIconApi icon;

  @override
  String toString() {
    return 'Weather(main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(this);
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {required final String main,
      required final String description,
      @JsonKey(unknownEnumValue: WeatherIconApi.unknown)
          required final WeatherIconApi icon}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  String get main => throw _privateConstructorUsedError;
  @override // required String icon,
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(unknownEnumValue: WeatherIconApi.unknown)
  WeatherIconApi get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({double lon, double lat});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, (v) => _then(v as _$_Location));

  @override
  _$_Location get _value => super._value as _$_Location;

  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_Location(
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  _$_Location({required this.lon, required this.lat});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'Location(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.lat, lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(lat));

  @JsonKey(ignore: true)
  @override
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  factory _Location({required final double lon, required final double lat}) =
      _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
