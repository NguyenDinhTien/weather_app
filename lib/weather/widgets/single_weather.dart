import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/utils/theme.dart';
import 'package:weather_app/weather/cubit/weather_cubit.dart';

import '../../models/model.dart';
import '../../utils/weather_icon_mapper.dart';

class SingleWeather extends StatelessWidget {
  const SingleWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(builder: ((context, state) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                      child: Text(state.weather.name,
                          style: PrimaryFont.medium(40))),
                  Text(
                    state.weather.dateTime,
                    style: PrimaryFont.light(12).copyWith(height: 1.5),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                    textHeightBehavior: TextHeightBehavior(),
                    text: TextSpan(
                      text: '${state.weather.temperature.value.round()}°',
                      children: [
                        state.temperatureUnits.isCelsius
                            ? const TextSpan(text: 'C')
                            : const TextSpan(text: 'F')
                      ],
                      //style: PrimaryFont.light(85)),
                      style: GoogleFonts.lato(
                        fontSize: 80,
                        fontWeight: FontWeight.w300,
                        color: kColorWhite,
                      ),
                    )),
                Row(
                  children: [
                    RichText(
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                        text: state.weather.icon.toIcon,
                        style: const TextStyle(
                          inherit: false,
                          color: kColorLightGrey,
                          fontSize: 30,
                          fontFamily: 'WeatherIcons',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(state.weather.description.toTitleCase(),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          softWrap: true,
                          style: PrimaryFont.light(20)),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white30,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Wind', style: PrimaryFont.bold(14)),
                    Text(state.weather.wind.toInt().toString(),
                        style: PrimaryFont.medium(24)),
                    Text('m/s', style: PrimaryFont.bold(14)),
                    // Stack(
                    //   children: [
                    //     Container(
                    //       height: 5,
                    //       width: 50,
                    //       color: Colors.white38,
                    //     ),
                    //     Container(
                    //       height: 5,
                    //       width: locationList[1].wind / 2,
                    //       color: Colors.greenAccent,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                Column(
                  children: [
                    Text('Sunrise', style: PrimaryFont.bold(14)),
                    Text(state.weather.sunrise.toTime(),
                        style: PrimaryFont.medium(24)),
                    Text(state.weather.sunrise.toTimeMarkers(),
                        style: PrimaryFont.bold(14)),
                    // Text(
                    //   '%',
                    //   style: GoogleFonts.lato(
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    // Stack(
                    //   children: [
                    //     Container(
                    //       height: 5,
                    //       width: 50,
                    //       color: Colors.white38,
                    //     ),
                    //     Container(
                    //       height: 5,
                    //       width: locationList[1].rain / 2,
                    //       color: Colors.redAccent,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                Column(
                  children: [
                    Text('SunSet', style: PrimaryFont.bold(14)),
                    Text(state.weather.sunset.toTime(),
                        style: PrimaryFont.medium(24)),
                    Text(state.weather.sunset.toTimeMarkers(),
                        style: PrimaryFont.bold(14)),
                  ],
                ),
                Column(
                  children: [
                    Text('Humidy', style: PrimaryFont.bold(14)),
                    Text(state.weather.humidity.toInt().toString(),
                        style: PrimaryFont.medium(24)),
                    Text('%', style: PrimaryFont.bold(14)),
                    // Stack(
                    //   children: [
                    //     Container(
                    //       height: 5,
                    //       width: 50,
                    //       color: Colors.white38,
                    //     ),
                    //     Container(
                    //       height: 5,
                    //       width: locationList[1].humidity / 2,
                    //       color: Colors.redAccent,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }));
  }
}

extension on WeatherIconApi {
  String get toIcon {
    switch (this) {
      case WeatherIconApi.clear_d:
        return WeatherIcons.clearDay;
      case WeatherIconApi.clear_n:
        return WeatherIcons.clearNight;
      case WeatherIconApi.fewClouds_d:
        return WeatherIcons.fewCloudsDay;
      case WeatherIconApi.fewClouds_n:
        return WeatherIcons.fewCloudsNight;
      case WeatherIconApi.scatteredClouds_d:
      case WeatherIconApi.scatteredClouds_n:
        return WeatherIcons.clouds;
      case WeatherIconApi.bkorenClounds_d:
      case WeatherIconApi.bkorenClounds_n:
        return WeatherIcons.brokenClound;
      case WeatherIconApi.showerRain_d:
      case WeatherIconApi.showerRain_n:
        return WeatherIcons.rain;
      case WeatherIconApi.rain_d:
        return WeatherIcons.rainDay;
      case WeatherIconApi.rain_n:
        return WeatherIcons.rainNight;
      case WeatherIconApi.thunderStorm_d:
      case WeatherIconApi.thunderStorm_n:
        return WeatherIcons.thunderStorm;
      case WeatherIconApi.mist_d:
      case WeatherIconApi.mist_n:
        return WeatherIcons.mist;
      case WeatherIconApi.snow_d:
      case WeatherIconApi.snow_n:
        return WeatherIcons.snow;
      default:
        return WeatherIcons.unknown;
    }
  }
}
