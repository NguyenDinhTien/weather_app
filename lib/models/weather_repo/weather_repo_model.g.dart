// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Temperature _$TemperatureFromJson(Map<String, dynamic> json) => Temperature(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$TemperatureToJson(Temperature instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

WeatherRepo _$WeatherRepoFromJson(Map<String, dynamic> json) => WeatherRepo(
      name: json['name'] as String,
      temperature:
          Temperature.fromJson(json['temperature'] as Map<String, dynamic>),
      condition: json['condition'] as String,
      description: json['description'] as String,
      tempMin: Temperature.fromJson(json['tempMin'] as Map<String, dynamic>),
      tempMax: Temperature.fromJson(json['tempMax'] as Map<String, dynamic>),
      humidity: (json['humidity'] as num).toDouble(),
      dateTime: json['dateTime'] as String,
      icon: $enumDecode(_$WeatherIconApiEnumMap, json['icon']),
      wind: (json['wind'] as num).toDouble(),
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherRepoToJson(WeatherRepo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'temperature': instance.temperature,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'description': instance.description,
      'condition': instance.condition,
      'humidity': instance.humidity,
      'dateTime': instance.dateTime,
      'icon': _$WeatherIconApiEnumMap[instance.icon],
      'wind': instance.wind,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'lat': instance.lat,
      'lon': instance.lon,
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
