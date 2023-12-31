// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/themes/text_styles.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/features/home/domain/entities/slide_item.dart';
import 'package:bund/features/home/presentation/widgets/start_now_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<SlideItem> slideItems = [
  SlideItem(img: getImg('swiss_banking'), title: 'Standard', imgWidth: 147),
  SlideItem(img: getImg('cim'), title: 'Plus', imgWidth: 93),
  SlideItem(img: getImg('ubs'), title: 'Max', imgWidth: 120),
  SlideItem(img: getImg('ubs'), title: 'Unlimited', imgWidth: 120)
];

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
              viewportFraction: .90,
              initialPage: 0,
              enlargeFactor: .7,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              animateToClosest: true,
              pageSnapping: true,
              pauseAutoPlayOnTouch: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
          items: slideItems.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return SlideContainer(
                  slideItem: item,
                );
              },
            );
          }).toList(),
        ),
        const Gap(14),
        DotsIndicator(
          dotsCount: slideItems.length,
          position: currentIndex,
          onTap: (index) {
            controller.animateToPage(index);
          },
          decorator: DotsDecorator(
            color: AppColors.dotsColor,
            activeColor: AppColors.primaryBlueColor,
            size: const Size.square(8),
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

// ignore: must_be_immutable
class SlideContainer extends StatelessWidget {
  SlideContainer({super.key, required this.slideItem});
  SlideItem slideItem;
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
                  slideItem.title,
                  style: TextStyles.standardText,
                ),
                const Gap(18),
                const StartNowButton(),
              ],
            ),
            Image.asset(slideItem.img, width: 100),
          ],
        ),
      ),
    );
  }
}
