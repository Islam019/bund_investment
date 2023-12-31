import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class InvestmentCalc extends StatelessWidget {
  const InvestmentCalc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.backgroundWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: 343,
      // height: 346,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Investment Amount',
              style: TextStyles.smallHintText,
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.hintGreyColor,
                          offset: Offset(0, 0),
                          blurRadius: 6,
                          spreadRadius: -12,
                        ), //BoxShadow
                      ],
                    ),
                    child: SvgPicture.asset(
                      getSvgIcon('-'),
                      height: 55,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  child: Text(
                    '\$10,000',
                    style: TextStyles.investmentAmountText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.hintGreyColor,
                          offset: Offset(0, 0),
                          blurRadius: 6,
                          spreadRadius: -12,
                        ), //BoxShadow
                      ],
                    ),
                    child: SvgPicture.asset(
                      getSvgIcon('+'),
                      height: 55,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(12),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.chipColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                child: Text(
                  '6.81% YTM',
                  style: TextStyles.smallValueCalcCard,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.enabledGreyColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: AppColors.primaryBlueColor)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 5, bottom: 5),
                      child: Text(
                        '3 Year Term',
                        style: TextStyles.enabledChipText,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.disabledGreyColor,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 5, bottom: 5),
                      child: Text(
                        '5 Year Term',
                        style: TextStyles.disabledChipText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Capital At Maturity',
                  style: TextStyles.smallHintText,
                ),
                Text(
                  'Total Interest',
                  style: TextStyles.smallHintText,
                ),
              ],
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$10,681',
                  style: TextStyles.bundText,
                ),
                Text(
                  '\$681',
                  style: TextStyles.bundText,
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Annual Interest',
                  style: TextStyles.smallHintText,
                ),
                Text(
                  'Average Maturity Date',
                  style: TextStyles.smallHintText,
                ),
              ],
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$68.1',
                  style: TextStyles.bundText,
                ),
                Text(
                  '2026',
                  style: TextStyles.bundText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
