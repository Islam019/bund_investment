import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/features/home/presentation/widgets/start_now_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: 330,
      decoration: const BoxDecoration(
        color: AppColors.backgroundWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // const Gap(16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'bünd',
                style: TextStyles.bundText,
              ),
              Text(
                'Standard',
                style: TextStyles.standardText,
              ),
              const Gap(18),
              const StartNowButton(),
            ],
          ),
          Image.asset(getImg('swiss_banking'), width: 147),
        ],
      ),
    );
  }
}
