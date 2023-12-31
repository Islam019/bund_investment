import 'package:bund/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
// App Bar Text Styles
  static TextStyle greetingText = TextStyle(
    color: AppColors.subTitleBlueColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle usernameText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

// Home Page Text Styles
  static TextStyle subTitleText = TextStyle(
    color: AppColors.subTitleBlueColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

// slider text style
  static TextStyle buttonText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle enabledChipText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle disabledChipText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );

  // slider text styles
  static TextStyle bundText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 23.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle standardText = TextStyle(
    color: AppColors.disableIconGreyColor,
    fontSize: 23.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle conditionCardText = TextStyle(
    color: AppColors.conditionCardTextColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle inActiveConditionCardText = TextStyle(
    color: AppColors.inactiveCardTextColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle pageTitle = TextStyle(
    color: AppColors.pageTitleBlueColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle paragraphText = TextStyle(
    color: AppColors.subTitleBlueColor,
    fontSize: 14.sp,
    height: 1.8.h,
    fontWeight: FontWeight.w600,
  );

  static TextStyle hintText = TextStyle(
    color: AppColors.hintGreyColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle smallHintText = TextStyle(
    color: AppColors.hintGreyColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle ytmText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 31.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle smallSubTitle = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bondTitle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bondTypeTitle = TextStyle(
    color: AppColors.bondsTypeColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bondValueTitle = TextStyle(
    color: AppColors.bondsValueColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle createInvestmentText = TextStyle(
    color: AppColors.backgroundWhiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w800,
  );

  static TextStyle investmentAmountText = TextStyle(
    color: AppColors.primaryBlueColor,
    fontSize: 36.sp,
    fontWeight: FontWeight.w800,
  );

  static TextStyle smallValueCalcCard = TextStyle(
    color: AppColors.bondsValueColor,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );
}
