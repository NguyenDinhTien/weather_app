import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/weather/widgets/single_weather.dart';

import '../cubit/weather_cubit.dart';

class WeatherPopulated extends StatelessWidget {
  const WeatherPopulated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
          onRefresh: () {
            return context.read<WeatherCubit>().refreshWeather();
          },
          child: SingleChildScrollView(
            physics:
                const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            clipBehavior: Clip.none,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: constraints.maxHeight),
              child: SizedBox(
                height: constraints.maxHeight,
                child: Column(
                  children: <Widget>[Expanded(child: SingleWeather())],
                ),
              ),
            ),
          )),

      // child: CustomScrollView(
      //   physics: const AlwaysScrollableScrollPhysics(),
      //   clipBehavior: Clip.none,
      //   slivers: <Widget>[
      //     SliverFillRemaining(
      //       child: Center(
      //         child: Column(
      //           children: <Widget>[Expanded(child: SingleWeather(1, weather))],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

// extension on WeatherCondition {
//   String get toEmoji {
//     switch (this) {
//       case WeatherCondition.clear:
//         return '☀️';
//       case WeatherCondition.rainy:
//         return '🌧️';
//       case WeatherCondition.cloudy:
//         return '☁️';
//       case WeatherCondition.snowy:
//         return '🌨️';
//       case WeatherCondition.unknown:
//       default:
//         return '❓';
//     }
//   }
// }

class _WeatherBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.25, 0.75, 0.90, 1.0],
          colors: [
            color,
            color.brighten(10),
            color.brighten(33),
            color.brighten(50),
          ],
        ),
      ),
    );
  }
}

extension on Color {
  Color brighten([int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}

// extension on Weather {
//   String formattedTemperature(TemperatureUnits units) {
//     return '''${temperature.value.toStringAsPrecision(2)}°${units.isCelsius ? 'C' : 'F'}''';
//   }
// }
