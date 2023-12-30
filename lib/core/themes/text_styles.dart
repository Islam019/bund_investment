import 'package:bund/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
// App Bar Text Styles
  static TextStyle greetingText = const TextStyle(
    color: AppColors.subTitleBlueColor,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static TextStyle usernameText = const TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

// Home Page Text Styles
  static TextStyle subTitleText = const TextStyle(
    color: AppColors.subTitleBlueColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

// slider text style
  static TextStyle buttonText = const TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  // slider text styles
  static TextStyle bundText = const TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 23,
    fontWeight: FontWeight.w600,
  );

  static TextStyle standardText = const TextStyle(
    color: AppColors.disableIconGreyColor,
    fontSize: 23,
    fontWeight: FontWeight.w400,
  );

  static TextStyle conditionCardText = const TextStyle(
    color: AppColors.conditionCardTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static TextStyle inActiveConditionCardText = const TextStyle(
    color: AppColors.inactiveCardTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}