import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/core/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PagesAppBar(title: 'Chat with Us'),
          const Gap(25),
          SingleChildScrollView(
            child: Column(
              children: [
                const Gap(40),
                Center(
                  child: Text(
                    'Feel free to chat with us at any time you want,\nWe provide 24/7 Customer Service.',
                    textAlign: TextAlign.center,
                    style: TextStyles.hintText,
                  ),
                ),
                const Gap(125),
                SvgPicture.asset(
                  getSvgIcon('chat_with_us'),
                  width: 150.w,
                ),
                const Gap(140),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.primaryBlueColor,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    height: 56.h,
                    width: MediaQuery.sizeOf(context).width.w,
                    child: Center(
                        child: Text(
                      'Start New Conversation',
                      style: TextStyles.createInvestmentText,
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
