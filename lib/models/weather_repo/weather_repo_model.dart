import 'dart:ffi';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../model.dart';
part 'weather_repo_model.g.dart';

@JsonSerializable()
class Temperature extends Equatable {
  const Temperature({required this.value});

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);

  final double value;

  Map<String, dynamic> toJson() => _$TemperatureToJson(this);

  @override
  List<Object> get props => [value];
}

@JsonSerializable()
class WeatherRepo extends Equatable {
  const WeatherRepo({
    required this.name,
    required this.temperature,
    required this.condition,
    required this.description,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
    required this.dateTime,
    required this.icon,
    required this.wind,
    required this.sunrise,
    required this.sunset,
    required this.lat,
    required this.lon,
  });

  factory WeatherRepo.fromJson(Map<String, dynamic> json) =>
      _$WeatherRepoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherRepoToJson(this);

  factory WeatherRepo.fromRepository(WeatherApi data) {
    return WeatherRepo(
        name: data.cityName,
        temperature: Temperature(value: data.main.temp),
        tempMin: Temperature(value: data.main.tempMin),
        tempMax: Temperature(value: data.main.tempMax),
        condition: data.weather.first.main,
        description: data.weather.first.description,
        humidity: data.main.humidity,
        dateTime: data.dateTime,
        icon: data.weather.first.icon,
        wind: data.wind.speed,
        sunrise: data.sys.sunrise,
        sunset: data.sys.sunset,
        lat: data.location.lat,
        lon: data.location.lon);
  }

  static const empty = WeatherRepo(
      name: '',
      temperature: Temperature(value: 0),
      description: 'nothing',
      tempMin: Temperature(value: 0),
      tempMax: Temperature(value: 0),
      humidity: 0.0,
      dateTime: '',
      icon: WeatherIconApi.unknown,
      condition: '',
      wind: 0.0,
      sunrise: '',
      sunset: '',
      lat: 0,
      lon: 0);

  WeatherRepo copyWith(
      {String? name,
      Temperature? temperature,
      Temperature? tempMin,
      Temperature? tempMax,
      String? description,
      double? humidity,
      String? dateTime,
      WeatherIconApi? icon,
      String? condition,
      double? wind,
      String? sunrise,
      String? sunset,
      double? lat,
      double? lon}) {
    return WeatherRepo(
      name: name ?? this.name,
      temperature: temperature ?? this.temperature,
      description: description ?? this.description,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      humidity: humidity ?? this.humidity,
      dateTime: dateTime ?? this.dateTime,
      icon: icon ?? this.icon,
      condition: condition ?? this.condition,
      wind: wind ?? this.wind,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }

  final String name;
  final Temperature temperature;
  final Temperature tempMin;
  final Temperature tempMax;
  final String description;
  final String condition;
  final double humidity;
  final String dateTime;
  final WeatherIconApi icon;
  final double wind;
  final String sunrise;
  final String sunset;
  final double lat;
  final double lon;

  @override
  List<Object> get props => [
        name,
        temperature,
        temperature,
        tempMin,
        tempMax,
        description,
        humidity,
        wind,
        sunrise,
        sunset,
        lat,
        lon
      ];
}
