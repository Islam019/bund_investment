// ignore_for_file: deprecated_member_use

import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class ConditionCard extends StatelessWidget {
  ConditionCard({
    super.key,
    required this.icon,
    required this.title,
  });
  String icon;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 172,
      decoration: const BoxDecoration(
          color: AppColors.conditionCardColor,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            getSvgIcon(icon),
            width: 30,
            color: AppColors.conditionCardImgColor,
          ),
          const Gap(8),
          Text(title, style: TextStyles.conditionCardText),
        ],
      ),
    );
  }
}
