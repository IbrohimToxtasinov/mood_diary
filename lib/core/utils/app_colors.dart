import 'package:flutter/material.dart';

class AppColors {
  AppColors._private();

  static final AppColors _instance = AppColors._private();

  factory AppColors() => _instance;

  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff000000);
  static const transparent = Colors.transparent;
  static const cBCBCBF = Color(0xffBCBCBF);
  static const cFF8702 = Color(0xffFF8702);
  static const cF2F2F2 = Color(0xffF2F2F2);
  static const c4C4C69 = Color(0xff4C4C69);
}
