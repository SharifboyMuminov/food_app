import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  static const Color cA259FF = Color(0xFFA259FF);
  static const Color cF6F5F5 = Color(0xFFF6F5F5);
  static const Color c2D0C57 = Color(0xFF2D0C57);
  static const Color c9586A8 = Color(0xFF9586A8);
  static const Color c0BCE83 = Color(0xFF0BCE83);
  static const Color c7203FF = Color(0xFF7203FF);
  static const Color cD9D0E3F = Color(0xFFD9D0E3);
  static const Color c6C0EE4 = Color(0xFF6C0EE4);
  static const Color cE2CBFF = Color(0xFFE2CBFF);
  static const Color c06BE77 = Color(0xFF06BE77);
  static const Color c4D05A9 = Color(0xFF4D05A9);

  static LinearGradient cardLinearGradient = const LinearGradient(
    colors: [
      Color(0xFFB993D6),
      Color(0xFF8CA6DB),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
