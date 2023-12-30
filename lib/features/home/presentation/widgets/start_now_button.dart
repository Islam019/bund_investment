import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class StartNowButton extends StatelessWidget {
  const StartNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 34,
      decoration: BoxDecoration(
        color: AppColors.buttonColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(getSvgIcon('double_arrow'), width: 16, height: 16),
          const Gap(4),
          Text(
            'Start Now ',
            style: TextStyles.buttonText,
          ),
        ],
      ),
    );
  }
}
