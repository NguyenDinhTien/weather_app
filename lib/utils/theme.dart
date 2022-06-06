import 'package:flutter/material.dart';

const kColorBlack = Color.fromARGB(255, 0, 0, 0);
const kColorBlackOpacity = Color.fromARGB(92, 0, 0, 0);
const kColorWhite = Color.fromARGB(255, 255, 255, 255);
const kColorWhiteOpacity = Color.fromARGB(127, 255, 255, 255);
const kColorLightGrey = Color(0xFFEBEAEC);
const kColorDarkGrey = Color(0xFF3F414E);

class PrimaryFont {
  static TextStyle thin(double size) {
    return TextStyle(
        fontWeight: FontWeight.w100, fontSize: size, color: kColorWhite);
  }

  static TextStyle light(double size) {
    return TextStyle(
        fontWeight: FontWeight.w300, fontSize: size, color: kColorWhite);
  }

  static TextStyle medium(double size) {
    return TextStyle(
        fontWeight: FontWeight.w500, fontSize: size, color: kColorWhite);
  }

  static TextStyle bold(double size) {
    return TextStyle(
        fontWeight: FontWeight.w700, fontSize: size, color: kColorWhite);
  }
}

extension GetOrientation on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}

extension GetSize on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String toTime() => substring(0, length - 2);
  String toTimeMarkers() => substring(length - 2);
}
