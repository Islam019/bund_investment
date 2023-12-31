import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/features/home/presentation/widgets/condition_card.dart';
import 'package:bund/features/home/presentation/widgets/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Conditions',
            style: TextStyles.subTitleText,
          ),
        ),
        const Gap(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConditionCard(icon: 'deposit', title: 'No Minimum Deposit'),
              ConditionCard(icon: 'bank', title: '\$15/Month (Paid Annually)'),
            ],
          ),
        ),
        const Gap(14),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'What You Get',
            style: TextStyles.subTitleText,
          ),
        ),
        const Gap(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeatureCard(icon: 'bank', title: 'Swiss Bank Account'),
                  FeatureCard(icon: 'card', title: 'Mastercard Prepaid'),
                  FeatureCard(icon: 'thunder', title: 'Account Open Same Day'),
                ],
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeatureCard(
                      icon: 'umbrella', title: 'Protected up to \$100,000'),
                  FeatureCard(
                    icon: 'green',
                    title: 'Investments Portfolios',
                    isActive: false,
                  ),
                  FeatureCard(
                    icon: 'locker',
                    title: 'Deposits Options',
                    isActive: false,
                  ),
                ],
              ),
              const Gap(8), // handle the Final Gap
            ],
          ),
        ),
      ],
    );
  }
}
