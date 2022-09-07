import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ScreenUtils {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1200 &&
      MediaQuery.of(context).size.width > 700;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;
}
