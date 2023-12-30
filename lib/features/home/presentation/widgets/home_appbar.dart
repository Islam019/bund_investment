import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/load_assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 16, left: 16),
      child: SafeArea(
        child: Container(
          height: 60,
          decoration: const BoxDecoration(color: AppColors.scaffoldWhiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(getSvgIcon('profile'),
                      height: 40, width: 40),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, bottom: 10, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Constants.greeting,
                          style: TextStyles.greetingText,
                        ),
                        Text(
                          Constants.userNameTest,
                          style: TextStyles.usernameText,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(getSvgIcon('notification'),
                  height: 40, width: 40),
            ],
          ),
        ),
      ),
    );
  }
}
