// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherApi _$$_WeatherApiFromJson(Map<String, dynamic> json) =>
    _$_WeatherApi(
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      location: Location.fromJson(json['coord'] as Map<String, dynamic>),
      cityName: json['name'] as String,
      dateTime: const TimesConverterFull().fromJson(json['dt'] as int),
    );

Map<String, dynamic> _$$_WeatherApiToJson(_$_WeatherApi instance) =>
    <String, dynamic>{
      'main': instance.main.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'wind': instance.wind.toJson(),
      'sys': instance.sys.toJson(),
      'coord': instance.location.toJson(),
      'name': instance.cityName,
      'dt': const TimesConverterFull().toJson(instance.dateTime),
    };

_$_Main _$$_MainFromJson(Map<String, dynamic> json) => _$_Main(
      temp: (json['temp'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainToJson(_$_Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };

_$_Wind _$$_WindFromJson(Map<String, dynamic> json) => _$_Wind(
      speed: (json['speed'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
    };

_$_Sys _$$_SysFromJson(Map<String, dynamic> json) => _$_Sys(
      sunrise: const TimesConverter().fromJson(json['sunrise'] as int),
      sunset: const TimesConverter().fromJson(json['sunset'] as int),
    );

Map<String, dynamic> _$$_SysToJson(_$_Sys instance) => <String, dynamic>{
      'sunrise': const TimesConverter().toJson(instance.sunrise),
      'sunset': const TimesConverter().toJson(instance.sunset),
    };

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      main: json['main'] as String,
      description: json['description'] as String,
      icon: $enumDecode(_$WeatherIconApiEnumMap, json['icon'],
          unknownValue: WeatherIconApi.unknown),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': _$WeatherIconApiEnumMap[instance.icon],
    };

const _$WeatherIconApiEnumMap = {
  WeatherIconApi.clear_d: '01d',
  WeatherIconApi.fewClouds_d: '02d',
  WeatherIconApi.scatteredClouds_d: '03d',
  WeatherIconApi.bkorenClounds_d: '04d',
  WeatherIconApi.showerRain_d: '09d',
  WeatherIconApi.rain_d: '10d',
  WeatherIconApi.thunderStorm_d: '11d',
  WeatherIconApi.snow_d: '13d',
  WeatherIconApi.mist_d: '50d',
  WeatherIconApi.clear_n: '01n',
  WeatherIconApi.fewClouds_n: '02n',
  WeatherIconApi.scatteredClouds_n: '03n',
  WeatherIconApi.bkorenClounds_n: '04n',
  WeatherIconApi.showerRain_n: '09n',
  WeatherIconApi.rain_n: '10n',
  WeatherIconApi.thunderStorm_n: '11n',
  WeatherIconApi.snow_n: '13n',
  WeatherIconApi.mist_n: '50n',
  WeatherIconApi.unknown: 'unknown',
};

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
