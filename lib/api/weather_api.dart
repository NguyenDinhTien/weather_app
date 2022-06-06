import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/location/location_api_model.dart';

import '../models/model.dart';

/// Exception thrown when locationSearch fails.
class LocationIdRequestFailure implements Exception {}

/// Exception thrown when the provided location is not found.
class LocationNotFoundFailure implements Exception {}

/// Exception thrown when getWeather fails.
class WeatherRequestFailure implements Exception {}

/// Exception thrown when weather for provided location is not found.
class WeatherNotFoundFailure implements Exception {}

/// {@template meta_weather_api_client}
/// Dart API Client which wraps the [MetaWeather API](https://www.metaweather.com/api/).
/// {@endtemplate}
class MetaWeatherApiClient {
  /// {@macro meta_weather_api_client}
  MetaWeatherApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'www.metaweather.com';
  static const _baseUrlNew = 'api.openweathermap.org';
  static const _apiKey = '617f06d06304975ffc48f512798cb174';

  final http.Client _httpClient;

  Future<LocationApi> locationSearch(String city) async {
    final locationRequest = Uri.https(
      _baseUrlNew,
      'geo/1.0/direct',
      <String, String>{'q': city, 'appid': _apiKey, 'units': 'imperial'},
    );

    final locationResponse = await _httpClient.get(locationRequest);
    if (locationResponse.statusCode != 200) {
      throw LocationIdRequestFailure();
    }
    final locationJson = jsonDecode(
      locationResponse.body,
    ) as List;

    if (locationJson.isEmpty) {
      throw LocationNotFoundFailure();
    }

    return LocationApi.fromJson(locationJson.first as Map<String, dynamic>);
  }

  /// Fetches [Weather] for a given [locationId].
  Future<WeatherApi> getWeather(String lat, String lon) async {
    final weatherRequest = Uri.http(
      _baseUrlNew,
      'data/2.5/weather',
      <String, String>{
        'lat': lat,
        'lon': lon,
        'appid': _apiKey,
        'units': 'metric'
      },
    );
    final weatherResponse = await _httpClient.get(weatherRequest);

    if (weatherResponse.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    final bodyJson = jsonDecode(weatherResponse.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw WeatherNotFoundFailure();
    }
    return WeatherApi.fromJson(bodyJson);
  }
}
