// ignore_for_file: must_be_immutable

import 'package:bund/features/investment/domain/entities/bond.dart';
import 'package:bund/features/investment/presentation/widgets/bonds_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BondsCollections extends StatelessWidget {
  BondsCollections({
    super.key,
  });

  List<Bond> bonds = [
    Bond(name: 'Netflix INC', img: 'netflix', type: 'BBB', value: '5.37% APY'),
    Bond(name: 'Ford Motor LLC', img: 'ford', type: 'BB+', value: '7.71% APY'),
    Bond(name: 'Apple INC', img: 'apple', type: 'AA+', value: '4.85% APY'),
    Bond(name: 'Morgan Stanley', img: 'morgan', type: 'A-', value: '6.27% APY'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BondsCard(bond: bonds[0]),
        const Gap(16),
        BondsCard(bond: bonds[1]),
        const Gap(16),
        BondsCard(bond: bonds[2]),
        const Gap(16),
        BondsCard(bond: bonds[3]),
      ],
    );
  }
}
