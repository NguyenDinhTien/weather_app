import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/repository/weather_repository.dart';
import 'package:weather_app/theme/cubit/theme_cubit.dart';
import 'package:weather_app/utils/theme.dart';
import 'package:weather_app/weather/view/weather_page.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key, required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(key: key);

  final WeatherRepository _weatherRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _weatherRepository,
      child: BlocProvider(
        create: (_) {
          return ThemeCubit();
        },
        child:const WeatherAppView(),
      ),
    );
  }
}

class WeatherAppView extends StatelessWidget {
  const WeatherAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('this is a new line');
    print('this is a new line two');
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        //primaryColor: color,
        textTheme: GoogleFonts.rubikTextTheme(),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.rubikTextTheme(textTheme)
              .apply(bodyColor: kColorWhite)
              .headline6,
        ),
      ),
      // home: WeatherPage(),
      home:const WeatherPage(),
    );
  }
}
