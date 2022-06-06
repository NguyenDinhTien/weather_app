import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/model.dart';
import '../../models/weather_repo/weather_repo_model.dart';
import '../../repository/weather_repository.dart';
// import '../model/weather_model.dart';

part 'weather_cubit.g.dart';
part 'weather_state.dart';

//class WeatherCubit extends HydratedCubit<WeatherState> {
class WeatherCubit extends HydratedCubit<WeatherState> {
  WeatherCubit(this._weatherRepository) : super(WeatherState());

  final WeatherRepository _weatherRepository;

  Future<bool> fetchWeather(String city) async {
    emit(state.copyWith(status: WeatherStatus.loading));

    try {
      final weather =
          WeatherRepo.fromRepository(await _weatherRepository.getWeather(city));

      final units = state.temperatureUnits;
      final convertTemp =
          convertTemprature(weather, units.isFahrenheit, isFirst: true);

      emit(state.copyWith(
          status: WeatherStatus.success,
          weather: convertTemp,
          isSearching: false));
      return true;
    } on Exception {
      emit(state.copyWith(status: WeatherStatus.failure));
      return false;
    }
  }

  Future<void> refreshWeather() async {
    print('debugging');
    if (!state.status.isSuccess) return;
    if (state.weather == WeatherRepo.empty) return;
    emit(state.copyWith(status: WeatherStatus.loading));
    try {
      final weather = WeatherRepo.fromRepository(
        await _weatherRepository.getWeather(state.weather.name,
            location: Location(lon: state.weather.lon, lat: state.weather.lat)),
      );
      final units = state.temperatureUnits;
      final convertTemp =
          convertTemprature(weather, units.isFahrenheit, isFirst: true);

      emit(state.copyWith(
          status: WeatherStatus.success,
          weather: convertTemp,
          isSearching: false));
    } on Exception {
      //emit(state);
      emit(state.copyWith(status: WeatherStatus.failure));
    }
  }

  WeatherRepo convertTemprature(WeatherRepo weather, bool isFahrenheit,
      {bool isFirst = false}) {
    final WeatherRepo convertTemp;
    if (isFirst && !isFahrenheit) {
      convertTemp = weather.copyWith();
      return convertTemp;
    }
    if (isFahrenheit) {
      convertTemp = weather.copyWith(
          temperature:
              Temperature(value: weather.temperature.value.toFahrenheit()),
          tempMin: Temperature(value: weather.tempMin.value.toFahrenheit()),
          tempMax: Temperature(value: weather.tempMax.value.toFahrenheit()));
    } else {
      convertTemp = weather.copyWith(
          temperature:
              Temperature(value: weather.temperature.value.toCelsius()),
          tempMin: Temperature(value: weather.tempMin.value.toCelsius()),
          tempMax: Temperature(value: weather.tempMax.value.toCelsius()));
    }

    print('debugging');
    return convertTemp;
  }

  void toggleUnits() {
    final units = state.temperatureUnits.isFahrenheit
        ? TemperatureUnits.celsius
        : TemperatureUnits.fahrenheit;

    if (!state.status.isSuccess) {
      emit(state.copyWith(temperatureUnits: units));
      return;
    }

    final weather = state.weather;
    if (weather != WeatherRepo.empty) {
      final temperature = convertTemprature(weather, units.isFahrenheit);

      emit(
        state.copyWith(
          temperatureUnits: units,
          weather: temperature,
        ),
      );
    }
  }

  void triggerSearchQuery(String value) {
    if (value.isNotEmpty) {
      emit(state.copyWith(isSearching: true));
    } else {
      emit(state.copyWith(isSearching: false));
    }
  }

  @override
  WeatherState fromJson(Map<String, dynamic> json) =>
      WeatherState.fromJson(json);

  @override
  Map<String, dynamic> toJson(WeatherState state) => state.toJson();
}

extension on double {
  double toFahrenheit() => ((this * 9 / 5) + 32);
  double toCelsius() => ((this - 32) * 5 / 9);
  // double toFahrenheit() => this * (9 / 5) - 459.67;
  // double toCelsius() => this - 273.15;
}
