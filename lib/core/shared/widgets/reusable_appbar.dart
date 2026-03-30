import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/core/theme/app_colors.dart';
import '/core/theme/textfont_styles.dart';

AppBar reusableAppBar({
  required String title,
  bool centerTitle = false,
  double elevation = 0,
  Widget? leadingIcon,
  List<Widget>? trailingIcon,
  BorderRadiusGeometry? borderRadius,
  Duration animationDuration = const Duration(milliseconds: 400),
  Gradient? gradient,
  TextStyle? titleStyle,
  Color? backgroundColor,
}) {
  return AppBar(
    backgroundColor: backgroundColor ?? AppColors.bgColor,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
    elevation: elevation,
    centerTitle: centerTitle,
    flexibleSpace: ClipRRect(
      borderRadius: borderRadius ?? const BorderRadius.vertical(),
      child: AnimatedContainer(
        duration: animationDuration,
        color: AppColors.transparent,
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        title,
        style: titleStyle ??
            getBoldStyle(
              color: AppColors.textColor,
              fontSize: 20,
            ),
      ),
    ),
    leading: leadingIcon,
    actions: trailingIcon,
  );
}
