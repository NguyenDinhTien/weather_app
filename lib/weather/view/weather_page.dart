import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/settings/settings.dart';
import 'package:weather_app/utils/focus.dart';
import 'package:weather_app/utils/theme.dart';

import '../../repository/weather_repository.dart';
import '../../theme/cubit/theme_cubit.dart';
import '../cubit/weather_cubit.dart';
import '../widgets/search_widget.dart';
import '../widgets/weather_empty.dart';
import '../widgets/weather_error.dart';
import '../widgets/weather_loading.dart';
import '../widgets/weather_populated.dart';

//
class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherCubit(context.read<WeatherRepository>())..refreshWeather(),
      child: WeatherView(),
    );
  }
}

class WeatherView extends StatelessWidget {
  WeatherView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppFocus.unfocus(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          BlocBuilder<ThemeCubit, String>(builder: (context, pathImg) {
            return Image.asset(
              pathImg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            );
          }),
          Container(
            decoration: const BoxDecoration(color: kColorBlackOpacity),
          ),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: SearchWidget(),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Material(
                              color: Colors.transparent,
                              child: Ink(
                                width: 35,
                                height: 35,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  splashColor: Colors.grey,
                                  onTap: () {
                                    Navigator.of(context)
                                        .push<void>(SettingsPage.route(
                                      context.read<WeatherCubit>(),
                                    ));
                                  },
                                  child: SvgPicture.asset(
                                    'assets/menu.svg',
                                    color: kColorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Center(
                  child: BlocConsumer<WeatherCubit, WeatherState>(
                    listenWhen: (p, c) => p.status != c.status,
                    listener: (context, state) {
                      if (state.status.isSuccess) {
                        context.read<ThemeCubit>().updateTheme(state.weather);
                      }
                    },
                    builder: (context, state) {
                      switch (state.status) {
                        case WeatherStatus.initial:
                          return const WeatherEmpty();
                        case WeatherStatus.loading:
                          return const WeatherLoading();
                        case WeatherStatus.success:
                          return const WeatherPopulated();
                        case WeatherStatus.failure:
                        default:
                          return const WeatherError();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
