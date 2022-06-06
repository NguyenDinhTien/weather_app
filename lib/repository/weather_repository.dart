import 'dart:async';

import '../api/weather_api.dart';
import '../models/model.dart';

class WeatherFailure implements Exception {}

class WeatherRepository {
  WeatherRepository({MetaWeatherApiClient? weatherApiClient})
      : _weatherApiClient = weatherApiClient ?? MetaWeatherApiClient();

  final MetaWeatherApiClient _weatherApiClient;

  Future<WeatherApi> getWeather(String city, {Location? location}) async {
    final String lat, lon;
    print('debugging');
    if (location == null) {
      final locationSearch = await _weatherApiClient.locationSearch(city);
      lat = locationSearch.lat.toString();
      lon = locationSearch.lon.toString();
    } else {
      lat = location.lat.toString();
      lon = location.lon.toString();
    }
    final weather = await _weatherApiClient.getWeather(lat, lon);
    print('debugging');
    return weather;
  }
}
