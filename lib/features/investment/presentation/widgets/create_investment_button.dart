import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class CreateInvestmentButton extends StatelessWidget {
  const CreateInvestmentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryBlueColor,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      height: 56,
      width: MediaQuery.sizeOf(context).width,
      child: Center(
          child: Text(
        'Create Investment Account',
        style: TextStyles.createInvestmentText,
      )),
    );
  }
}
