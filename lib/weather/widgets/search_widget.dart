import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/utils/focus.dart';
import 'package:weather_app/utils/theme.dart';

import '../cubit/weather_cubit.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  bool _expanded = true;
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: _expanded ? context.screenSize.width : 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33),
            color: _expanded ? kColorWhiteOpacity : kColorWhite,
            boxShadow: kElevationToShadow[6]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Material(
              color: Colors.transparent,
              child: Ink(
                width: 50,
                height: 50,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  splashColor: Colors.grey,
                  onTap: () async {
                    if (_expanded) {
                      bool isSearching =
                          context.read<WeatherCubit>().state.isSearching;
                      if (isSearching) {
                        await context
                            .read<WeatherCubit>()
                            .fetchWeather(controller.text)
                            .then((value) {
                          if (value) {
                            controller.clear();
                            AppFocus.unfocus(context);
                          }
                        });
                      } else {
                        setState(() {
                          _expanded = !_expanded;
                        });
                      }
                    } else {
                      setState(() {
                        _expanded = !_expanded;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: BlocBuilder<WeatherCubit, WeatherState>(
                        builder: (context, state) {
                      return Icon(
                        state.isSearching || !_expanded
                            ? Icons.search
                            : Icons.arrow_back,
                        size: 20,
                      );
                    }),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(children: [
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: _expanded
                      ? Center(
                          child: TextField(
                            style: PrimaryFont.medium(20)
                                .copyWith(color: kColorDarkGrey),
                            controller: controller,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsetsDirectional.only(start: 10.0),
                            ),
                            onSubmitted: (value) async {
                              await context
                                  .read<WeatherCubit>()
                                  .fetchWeather(value)
                                  .then((value) {
                                controller.clear();
                                FocusScope.of(context).unfocus();
                              });
                            },
                            onChanged: (value) {
                              context
                                  .read<WeatherCubit>()
                                  .triggerSearchQuery(value);
                            },
                          ),
                        )
                      : const SizedBox(),
                ),
                Visibility(
                  visible: _expanded,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          width: 20,
                          height: 20,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            splashColor: Colors.grey,
                            onTap: () {
                              controller.clear();
                              context
                                  .read<WeatherCubit>()
                                  .triggerSearchQuery('');
                            },
                            child: Builder(builder: (context) {
                              bool isSearching = context.select(
                                  (WeatherCubit cubit) =>
                                      cubit.state.isSearching);
                              return isSearching
                                  ? const Icon(
                                      Icons.close,
                                      size: 20,
                                    )
                                  : const SizedBox();
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
