import 'package:bund/features/home/presentation/widgets/features_section.dart';
import 'package:bund/features/home/presentation/widgets/home_appbar.dart';
import 'package:bund/features/home/presentation/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBar(),
          Gap(16),
          HomeSlider(),
          Gap(14),
          FeaturesSection(),
        ],
      ),
    );
  }
}
