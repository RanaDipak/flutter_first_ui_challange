import 'package:flutter/material.dart';

import 'color_constant.dart';

class AppThemes {
  AppThemes._();
  static const white26TextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 30,
      fontFamily: "Montserrat");
  static const black24TextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 24,
      fontFamily: "Montserrat");
  static const black26TextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 26,
      fontFamily: "Montserrat");
  static const black16TextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: "Montserrat");
  static const black12TextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: "Montserrat");
  static const black14TextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontFamily: "Montserrat");
  static const black20TextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w900,
      fontSize: 20,
      fontFamily: "Montserrat");
  static final black12DropDownTextStyle = TextStyle(
      color: HexColor(ColorConstants.dropDownTextColor),
      fontWeight: FontWeight.w900,
      fontSize: 12,
      fontFamily: "Montserrat",
      decoration: TextDecoration.none);
}
