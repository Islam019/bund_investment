import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/core/widgets/appbar.dart';
import 'package:bund/core/widgets/custom_navigation_bar.dart';
import 'package:bund/features/investment/presentation/widgets/bonds_collections.dart';
import 'package:bund/features/investment/presentation/widgets/create_investment_button.dart';
import 'package:bund/features/investment/presentation/widgets/investment_calc.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class InvestmentScreen extends StatelessWidget {
  InvestmentScreen({super.key});
  String paragraph =
      "A fixed income portfolio consists of bonds and other securities providing steady income and relatively lower risk.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.scaffoldWhiteColor,
      bottomNavigationBar: const CustomNavigationBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PagesAppBar(title: 'Fixed Income'),
          const Gap(60),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Text(
                      paragraph,
                      style: TextStyles.paragraphText,
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Annual Yield To Maturity (YTM)',
                          style: TextStyles.hintText,
                        ),
                        const Gap(5),
                        Image.asset(getImg('info'), height: 20),
                      ],
                    ),
                    Text(
                      '6.81%',
                      style: TextStyles.ytmText,
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Average Rating', style: TextStyles.smallHintText),
                        Text('Bonds', style: TextStyles.smallHintText),
                      ],
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('AA', style: TextStyles.bundText),
                        Text('20 Companies', style: TextStyles.bundText),
                      ],
                    ),
                    const Gap(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Term Types',
                          style: TextStyles.smallHintText,
                        ),
                      ],
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Container(
                          width: 106,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppColors.backgroundWhiteColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                color: AppColors.borderColor,
                              )),
                          child: Center(
                            child: Text(
                              '3 Year Term',
                              style: TextStyles.smallHintText,
                            ),
                          ),
                        ),
                        const Gap(12),
                        Container(
                          width: 106,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppColors.backgroundWhiteColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                color: AppColors.borderColor,
                              )),
                          child: Center(
                            child: Text(
                              '5 Year Term',
                              style: TextStyles.smallHintText,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Investment Calculator',
                          style: TextStyles.smallSubTitle,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const InvestmentCalc(),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Bonds',
                          style: TextStyles.smallSubTitle,
                        ),
                      ],
                    ),
                    const Gap(15),
                    BondsCollections(),
                    const Gap(31),
                    const CreateInvestmentButton(),
                    const Gap(60),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}