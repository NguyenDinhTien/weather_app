import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/utils/theme.dart';

import '../../weather/cubit/weather_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static Route route(WeatherCubit weatherCubit) {
    return MaterialPageRoute<void>(
      builder: (_) => BlocProvider.value(
        value: weatherCubit,
        child: const SettingsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kColorDarkGrey, title: const Text('Settings')),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
              child: Text("Units",
                  style: PrimaryFont.bold(20).copyWith(color: kColorDarkGrey)),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  color: kColorLightGrey),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Celsius",
                    style: PrimaryFont.bold(15).copyWith(color: kColorDarkGrey),
                  ),
                  Builder(builder: (context) {
                    // final unit = context.select(
                    //   (WeatherCubit cubit) => cubit.state.temperatureUnits,
                    // );

                    final cubit = context.watch<WeatherCubit>();
                    return Radio(
                      activeColor: kColorDarkGrey,
                      value: TemperatureUnits.celsius,
                      groupValue: cubit.state.temperatureUnits,
                      onChanged: (value) {
                        cubit.toggleUnits();
                      },
                      //activeColor: appTheme.accentColor,
                    );
                  })
                ],
              ),
            ),
            const Divider(
              color: kColorWhite,
              height: 1,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: kColorLightGrey),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Fahrenheit",
                    style: PrimaryFont.bold(15).copyWith(color: kColorDarkGrey),
                    // style: TextStyle(color: appTheme.accentColor),
                  ),
                  Builder(builder: (context) {
                    // final unit = context.select(
                    //   (WeatherCubit cubit) => cubit.state.temperatureUnits,
                    // );
                    final cubit = context.watch<WeatherCubit>();

                    return Radio(
                      activeColor: kColorDarkGrey,
                      value: TemperatureUnits.fahrenheit,
                      groupValue: cubit.state.temperatureUnits,
                      onChanged: (value) {
                        cubit.toggleUnits();
                      },
                      //activeColor: appTheme.accentColor,
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
