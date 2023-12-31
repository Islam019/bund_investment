// ignore_for_file: must_be_immutable

import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/features/investment/domain/entities/bond.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BondsCard extends StatelessWidget {
  BondsCard({
    super.key,
    required this.bond,
  });
  Bond bond;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 343,
      decoration: const BoxDecoration(
        color: AppColors.backgroundWhiteColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 17, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(getImg(bond.img), width: 48),
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bond.name,
                      style: TextStyles.bondTitle,
                    ),
                    Text(
                      bond.type,
                      style: TextStyles.bondTypeTitle,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              bond.value,
              style: TextStyles.bondValueTitle,
            ),
          ],
        ),
      ),
    );
  }
}
