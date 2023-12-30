import 'package:bund/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryBlueColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    useMaterial3: true,
    fontFamily: 'Lato',
  );

  static const lightColorScheme = ColorScheme.light(
    primary: AppColors.primaryBlueColor,
    secondary: AppColors.mainTitleBlueColor,
    background: AppColors.scaffoldWhiteColor,
    surface: AppColors.backgroundWhiteColor,
  );
}
