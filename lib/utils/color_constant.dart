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
  static Color primaryColor = HexColor("#4B281B");
  static Color brandBorderColor = HexColor("#4C291D");
  static Color popRatingColor = HexColor("#B9B9B9");
  static Color popPriceColor = HexColor("#7A7A7A");
  static Color bannerColor = HexColor("#E7E0D8");
  static Color bannerDiscountColor = HexColor("#526D5A");
  static Color bannerBtnColor = HexColor("#EC7A6C");
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return int.parse(buffer.toString(), radix: 16);
  }
}
