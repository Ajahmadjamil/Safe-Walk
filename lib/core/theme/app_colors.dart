import 'package:flutter/material.dart';
import '/core/theme/theme_service.dart';

class AppColors {
  static bool get _isDark => ThemeService.instance.isDarkMode;

  static const Color _scheme1 = Color(0xff3B1F2B);
  static const Color _scheme2 = Color(0xffDB162F);
  static const Color _scheme3 = Color(0xffDBDFAC);
  static const Color _scheme4 = Color(0xff383961);

  static Color get primaryColor => _scheme1;

  static Color get secondaryColor => _isDark ? _scheme4 : _scheme3;

  static Color get bgColor => _isDark ? Color(0xFFFFFFFF) : Color(0xFF000000);

  static Color get cardColor => _isDark ? _scheme3 : _scheme2;

  static Color transparent = Colors.transparent;

  static Color get textColor => _isDark ? Color(0xFFFFFFFF) : Color(0xFF000000);

  static Color get textColor1 => _scheme1;

  static Color get textColor2 => _isDark ? _scheme3 : _scheme4;

  static Color get textColorRed => _scheme1;

  static Color get textColorGreen => _scheme2;

  static Color get textColorPrimary => _scheme1;

  static Color get textFieldBorderColor => _isDark ? _scheme4 : _scheme3;

  static Color get textFieldBorderErrorColor => _scheme1;

  static Color get textFieldPlaceHolderColor => _isDark ? _scheme3 : _scheme4;

  static Color get textFieldTextColor => _isDark ? _scheme2 : _scheme4;

  static Color get textFieldTextColor1 => _scheme1;

  static Color get textFieldHintColor => _isDark ? _scheme3 : _scheme4;

  static Color get textFieldBorderColorSlct => _scheme1;

  static Color get textFieldSelectedBg => _isDark ? _scheme4 : _scheme3;

  static Color get textFieldSelectedBorder => _scheme1;

  static Color get statusBarActiveColor => _isDark ? _scheme4 : _scheme2;

  static Color get statusBarInActiveColor => _isDark ? _scheme3 : _scheme4;

  static Color get iconColorBlack => _isDark ? _scheme2 : _scheme4;

  static Color get iconColorWhite => _scheme1;

  static Color get iconColorGrey => _isDark ? _scheme3 : _scheme4;

  static Color get borderColor => _isDark ? _scheme4 : _scheme3;

  static Color get appBarColor => _isDark ? _scheme3 : _scheme3;

  static Color get appBarTextColor => _isDark ? _scheme2 : _scheme4;

  static Color get horizontalCardActiveBgColor => _isDark ? _scheme4 : _scheme3;

  static Color get btnColorPrimary => _scheme1;

  static Color get btnColorSecondary => _isDark ? _scheme4 : _scheme3;

  static Color get btnColorLight => _isDark ? _scheme4 : _scheme3;

  static Color get btnDisabledColor => _isDark ? _scheme4 : _scheme3;

  static Color get btnColorRed => _scheme1;

  static Color get btnDisabledLightGreyColor => _isDark ? _scheme3 : _scheme4;

  static Color get btnLavenderColor => _isDark ? _scheme4 : _scheme3;

  static Color get navBarColor => _scheme3;

  static Color get activeNavBarIconColor => _scheme4;

  static Color get inActiveNavBarIconColor => _isDark ? _scheme1 : _scheme1;

  static Color get shimmerBaseColor => _isDark ? _scheme4 : _scheme3;

  static Color get shimmerHighlightColor => _isDark ? _scheme3 : _scheme2;
}
