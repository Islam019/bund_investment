import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/features/home/presentation/widgets/start_now_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late CarouselController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
              height: 156,
              viewportFraction: .87,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 1500),
              autoPlayCurve: Curves.ease,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return const Slide();
              },
            );
          }).toList(),
        ),
        const Gap(14),
        DotsIndicator(
          dotsCount: 5,
          position: currentIndex,
          onTap: (index) {
            controller.animateToPage(index);
          },
          decorator: DotsDecorator(
            color: Colors.white,
            activeColor: AppColors.primaryBlueColor,
            size: const Size.square(12.0),
            activeSize: const Size(8, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ],
    );
  }
}

class Slide extends StatelessWidget {
  const Slide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        height: 156,
        width: 330,
        decoration: const BoxDecoration(
          color: AppColors.backgroundWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // const Gap(16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'bünd',
                  style: TextStyles.bundText,
                ),
                Text(
                  'Standard',
                  style: TextStyles.standardText,
                ),
                const Gap(18),
                const StartNowButton(),
              ],
            ),
            Image.asset(getImg('swiss_banking'), width: 147),
          ],
        ),
      ),
    );
  }
}
