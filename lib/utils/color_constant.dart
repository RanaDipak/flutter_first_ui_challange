import 'package:flutter/material.dart';

class ColorConstants {
  ColorConstants._();

  /// First UI
  static const String appColor = "#010180";
  static const String profitColor = "#ff7777";
  static const String borderColor = "#e5e5e5";
  static const String savingColor = "#F9A822";
  static const String historyColor = "#001BFF";
  static const String dropDownColor = "#FBFCFE";
  static const String dropDownBorderColor = "#DDE4F0";
  static const String dropDownTextColor = "#A46CEC";

  /// Second UI
  static const String primaryColor = "#4B281B";
  static const String brandBorderColor = "#4C291D";
  static const String popRatingColor = "#B9B9B9";
  static const String popPriceColor = "#7A7A7A";
  static const String bannerColor = "#E7E0D8";
  static const String bannerDiscountColor = "#526D5A";
  static const String bannerBtnColor = "#EC7A6C";
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
