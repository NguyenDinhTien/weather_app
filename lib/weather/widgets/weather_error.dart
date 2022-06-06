import 'package:flutter/material.dart';
import 'package:weather_app/utils/theme.dart';

class WeatherError extends StatelessWidget {
  const WeatherError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text('🙈', style: PrimaryFont.bold(50)),
              Text('Something went wrong!', style: PrimaryFont.medium(30)),
            ],
          ),
        )
      ],
    );
  }
}
