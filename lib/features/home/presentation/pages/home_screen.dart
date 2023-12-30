import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/widgets/custom_navigation_bar.dart';
import 'package:bund/features/home/presentation/widgets/home_appbar.dart';
import 'package:bund/features/home/presentation/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.scaffoldWhiteColor,
      bottomNavigationBar: CustomNavigationBar(),
      body: Column(
        children: [
          HomeAppBar(),
          Gap(16),
          HomeSlider(),
        ],
      ),
    );
  }
}
