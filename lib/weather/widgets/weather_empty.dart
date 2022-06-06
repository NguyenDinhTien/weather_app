import 'package:flutter/material.dart';
import 'package:weather_app/utils/theme.dart';

class WeatherEmpty extends StatelessWidget {
  const WeatherEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Center(
                child: Text(
                  'Please Select a City!',
                  style: PrimaryFont.medium(30),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
