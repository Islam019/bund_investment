// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class FeatureCard extends StatelessWidget {
  FeatureCard({
    super.key,
    this.isActive = true,
    required this.title,
    required this.icon,
  });
  bool isActive;
  String title;
  String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: 106,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: isActive
            ? AppColors.conditionCardColor
            : AppColors.inactiveCardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            getSvgIcon(icon),
            width: 30,
            color: isActive
                ? AppColors.conditionCardImgColor
                : AppColors.inactiveCardIconColor,
          ),
          const Gap(8),
          Center(
            child: Text(
              title,
              style: isActive
                  ? TextStyles.conditionCardText
                  : TextStyles.inActiveConditionCardText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
