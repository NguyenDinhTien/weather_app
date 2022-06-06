// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) => WeatherState(
      status: $enumDecodeNullable(_$WeatherStatusEnumMap, json['status']) ??
          WeatherStatus.initial,
      temperatureUnits: $enumDecodeNullable(
              _$TemperatureUnitsEnumMap, json['temperatureUnits']) ??
          TemperatureUnits.celsius,
      isSearching: json['isSearching'] as bool? ?? false,
      weather: json['weather'] == null
          ? null
          : WeatherRepo.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherStateToJson(WeatherState instance) =>
    <String, dynamic>{
      'status': _$WeatherStatusEnumMap[instance.status],
      'weather': instance.weather,
      'temperatureUnits': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
      'isSearching': instance.isSearching,
    };

const _$WeatherStatusEnumMap = {
  WeatherStatus.initial: 'initial',
  WeatherStatus.loading: 'loading',
  WeatherStatus.success: 'success',
  WeatherStatus.failure: 'failure',
};

const _$TemperatureUnitsEnumMap = {
  TemperatureUnits.fahrenheit: 'fahrenheit',
  TemperatureUnits.celsius: 'celsius',
};
