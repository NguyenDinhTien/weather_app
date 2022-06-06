part of 'weather_cubit.dart';

enum WeatherStatus { initial, loading, success, failure }

extension WeatherStatusX on WeatherStatus {
  bool get isInitial => this == WeatherStatus.initial;
  bool get isLoading => this == WeatherStatus.loading;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

enum TemperatureUnits { fahrenheit, celsius }

extension TempratureUnitsx on TemperatureUnits {
  bool get isFahrenheit => this == TemperatureUnits.fahrenheit;
  bool get isCelsius => this == TemperatureUnits.celsius;
}

@JsonSerializable()
class WeatherState extends Equatable {
  final WeatherStatus status;
  final WeatherRepo weather;
  // final Weather weather;
  final TemperatureUnits temperatureUnits;
  final bool isSearching;

  const WeatherState({
    this.status = WeatherStatus.initial,
    this.temperatureUnits = TemperatureUnits.celsius,
    this.isSearching=false,
    WeatherRepo? weather,
  }) : weather = weather ?? WeatherRepo.empty;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);

  WeatherState copyWith(
      {WeatherStatus? status,
      TemperatureUnits? temperatureUnits,
      // Weather? weather,
      bool ? isSearching,
      WeatherRepo? weather}) {
    return WeatherState(
      status: status ?? this.status,
      temperatureUnits: temperatureUnits ?? this.temperatureUnits,
      weather: weather ?? this.weather,
      isSearching: isSearching??this.isSearching,
    );
  }

  Map<String, dynamic> toJson() => _$WeatherStateToJson(this);

  @override
  List<Object?> get props => [status, temperatureUnits, weather, isSearching];
}
