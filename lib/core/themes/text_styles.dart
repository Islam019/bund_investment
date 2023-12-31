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

  static TextStyle pageTitle = const TextStyle(
    color: AppColors.pageTitleBlueColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle paragraphText = const TextStyle(
    color: AppColors.subTitleBlueColor,
    fontSize: 14,
    height: 1.8,
    fontWeight: FontWeight.w600,
  );

  static TextStyle hintText = const TextStyle(
    color: AppColors.hintGreyColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle smallHintText = const TextStyle(
    color: AppColors.hintGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle ytmText = const TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 31,
    fontWeight: FontWeight.w600,
  );

  static TextStyle smallSubTitle = const TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bondTitle = const TextStyle(
    color: AppColors.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bondTypeTitle = const TextStyle(
    color: AppColors.bondsTypeColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bondValueTitle = const TextStyle(
    color: AppColors.bondsValueColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle createInvestmentText = const TextStyle(
    color: AppColors.backgroundWhiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );
}
