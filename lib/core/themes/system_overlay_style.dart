import 'package:bund/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemOverlayStyles {
  static const systemUiOverlayStyleLight = SystemUiOverlayStyle(
    statusBarColor: AppColors.scaffoldWhiteColor,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
  );
}
