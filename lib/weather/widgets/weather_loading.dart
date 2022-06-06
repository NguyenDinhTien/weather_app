import 'package:flutter/material.dart';
import 'package:weather_app/utils/theme.dart';

class WeatherLoading extends StatelessWidget {
  const WeatherLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //const Text('⛅', style: TextStyle(fontSize: 64)),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                'Loading Weather',
                style: PrimaryFont.medium(30),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(
                  color: kColorWhite,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
