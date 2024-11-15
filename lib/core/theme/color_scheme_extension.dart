import 'package:flutter/material.dart';

import '../constants/color_const.dart';

extension ColorSchemeExtension on ColorScheme {
  Color get textFieldColor => brightness == Brightness.light
      // ? const Color(0xffEDEDED)
      ? const Color(0xFFF8F8F8)
      : const Color(0xff202020);

  Color get tabBarBackgroundColor => brightness == Brightness.light
      ? Colors.grey.shade200
      : const Color(0xff202020);

  Color get textColor => brightness == Brightness.light
      ? const Color(0xff000103)
      : ColorConst.whiteColor;

  Color get iconColor =>
      brightness == Brightness.light ? const Color(0xff707070) : Colors.white;

  Color get hintTextColor =>
      brightness == Brightness.light ? Colors.grey.shade800 : Colors.white70;

  // Color get hintTextColor =>
  //     brightness == Brightness.light ? const Color(0xff707070) : Colors.white54;

  Color get likeButtonBorderColor => brightness == Brightness.light
      ? ColorConst.likeButtonBorderColor
      : Colors.grey.shade900;

  Color get dialogBarrierColor => brightness == Brightness.light
      ? const Color(0x80000000)
      : Colors.white.withOpacity(0.01);

  Color get dialogColor => brightness == Brightness.light
      ? ColorConst.whiteColor
      : const Color(0xff161a1d);

  Color get buttonGrey => brightness == Brightness.light
      ? ColorConst.signInModeButtonColor
      : ColorConst.backgroundColorDark;

  Color get cardColor => brightness == Brightness.light
      ? const Color(0xff707070)
      : ColorConst.signInModeButtonColor;

  Color get blueTextColor => brightness == Brightness.light
      ? ColorConst.textBlueColor
      : ColorConst.whiteColor;
}
