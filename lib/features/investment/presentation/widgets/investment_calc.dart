import 'package:bund/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class InvestmentCalc extends StatelessWidget {
  const InvestmentCalc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 336,
      decoration: const BoxDecoration(
          color: AppColors.backgroundWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
