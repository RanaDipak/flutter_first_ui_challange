import 'package:flutter/material.dart';

class TColors {
  TColors._();
  static const String appColor = "#010180";
  static const String profitColor = "#ff7777";
  static const String borderColor = "#e5e5e5";
  static const String savingColor = "#F9A822";
  static const String historyColor = "#001BFF";
  static const String dropDownColor = "#FBFCFE";
  static const String dropDownBorderColor = "#DDE4F0";
  static const String dropDownTextColor = "#A46CEC";
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
