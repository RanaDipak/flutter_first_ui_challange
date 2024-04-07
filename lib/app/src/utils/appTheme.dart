import 'package:flutter/material.dart';
import 'package:flutter_first_ui/app/src/utils/color.dart';

class TAppTheme {
  TAppTheme._();
  static const white26TextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 30,
  );
  static const black26TextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 26,
  );
  static const black16TextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const black12TextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const black14TextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const black20TextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w900,
    fontSize: 20,
  );
  static final black12DropDownTextStyle = TextStyle(
      color: HexColor(TColors.dropDownTextColor),
      fontWeight: FontWeight.w900,
      fontSize: 12,
      decoration: TextDecoration.none);
}
