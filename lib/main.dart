import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_app/repository/weather_repository.dart';
import 'package:weather_app/weather_bloc_observer.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory());

  HydratedBlocOverrides.runZoned(
      () => runApp(WeatherApp(weatherRepository: WeatherRepository())),
      blocObserver: WeatherBlocObserver(),
      storage: storage);

  // BlocOverrides.runZoned(
  //   () => runApp(WeatherApp(weatherRepository: WeatherRepository())),
  //   blocObserver: WeatherBlocObserver(),
  // );
}



// Future<void> _deleteCacheDir() async {
//   final dir = await getTemporaryDirectory();
//   Directory cacheDir = Directory(dir.path + "/weather_app");
//   if (cacheDir.existsSync()) {
//     cacheDir.deleteSync(recursive: true);
//   }
// }

// Future<void> _deleteAppDir() async {
//   final appDir = await getApplicationSupportDirectory();

//   if (appDir.existsSync()) {
//     appDir.deleteSync(recursive: true);
//   }
// }
