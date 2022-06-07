import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app/models/weather_repo/weather_repo_model.dart';

// class ThemeCubit extends HydratedCubit<Color> {
class ThemeCubit extends HydratedCubit<String> {
  ThemeCubit() : super(defaultPath);

  static const defaultPath = 'assets/sunny.jpg';

  void updateTheme(WeatherRepo? weather) {
    if (weather != null) emit(weather.toPathImg);
  }

  @override
  String fromJson(Map<String, dynamic> json) {
    return json['bg'] as String;
  }

  @override
  Map<String, dynamic> toJson(String state) {
    return <String, String>{'bg': state};
  }
}

extension on WeatherRepo {
  String get toPathImg {
    switch (condition) {
      case 'Clouds':
        return 'assets/cloud.jpg';
      case 'Rain':
        return 'assets/rain.jpg';
      case 'ThunderStorm':
        return 'assets/thunderstorm.jpg';
      case 'Clear':
        return 'assets/clear.jpg';
      case 'Atmostphere':
        return 'assets/dust.jpg';
      case 'Snow':
        return 'assets/snow.jpg';
      case 'Drizzle':
        return 'assets/drizzle.jpg';
      default:
        return 'assets/sunny.jpg';
    }
  }
}
