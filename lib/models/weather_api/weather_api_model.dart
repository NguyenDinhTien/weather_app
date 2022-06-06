import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'weather_api_model.freezed.dart';
part 'weather_api_model.g.dart';

enum WeatherIconApi {
  @JsonValue('01d')
  clear_d,
  @JsonValue('02d')
  fewClouds_d,
  @JsonValue('03d')
  scatteredClouds_d,
  @JsonValue('04d')
  bkorenClounds_d,
  @JsonValue('09d')
  showerRain_d,
  @JsonValue('10d')
  rain_d,
  @JsonValue('11d')
  thunderStorm_d,
  @JsonValue('13d')
  snow_d,
  @JsonValue('50d')
  mist_d,

  @JsonValue('01n')
  clear_n,
  @JsonValue('02n')
  fewClouds_n,
  @JsonValue('03n')
  scatteredClouds_n,
  @JsonValue('04n')
  bkorenClounds_n,
  @JsonValue('09n')
  showerRain_n,
  @JsonValue('10n')
  rain_n,
  @JsonValue('11n')
  thunderStorm_n,
  @JsonValue('13n')
  snow_n,
  @JsonValue('50n')
  mist_n,
  unknown
}

@freezed
class WeatherApi with _$WeatherApi {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherApi({
    required Main main,
    required List<Weather> weather,
    required Wind wind,
    required Sys sys,
    @JsonKey(name: 'coord')required Location location,
    
    @JsonKey(name: 'name') required String cityName,
    @JsonKey(name: 'dt') @TimesConverterFull() required String dateTime,
  }
  ) = _WeatherApi;
  

  factory WeatherApi.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiFromJson(json);
}

@freezed
class Main with _$Main {
  factory Main({
    required double temp,
    required double humidity,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Wind with _$Wind {
  factory Wind({
    required double speed,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
class Sys with _$Sys {
  factory Sys({
    @TimesConverter() required String sunrise,
    @TimesConverter() required String sunset,
   
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  
}

@freezed
class Weather with _$Weather {
  factory Weather(
      {required String main,
      // required String icon,
      required String description,
      @JsonKey(unknownEnumValue: WeatherIconApi.unknown)
          required WeatherIconApi icon}) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}


@freezed
class Location with _$Location {

  factory Location({
    required double lon,
    required double lat,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
 
}

class TimesConverterFull implements JsonConverter<String, int> {
  const TimesConverterFull();

  @override
  String fromJson(int input) {
    return DateFormat('h:mm a - EEE, dd MMMM y')
        .format(DateTime.fromMillisecondsSinceEpoch(input * 1000));
  }
  @override
  int toJson(String object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
class TimesConverter implements JsonConverter<String, int> {
  const TimesConverter();

  @override
  String fromJson(int input) {
    return DateFormat('h:mm a')
        .format(DateTime.fromMillisecondsSinceEpoch(input * 1000));
  }
  @override
  int toJson(String object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

