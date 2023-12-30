// ignore_for_file: deprecated_member_use

import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      surfaceTintColor: AppColors.backgroundWhiteColor,
      backgroundColor: AppColors.backgroundWhiteColor,
      indicatorColor: Colors.transparent,
      height: 85,
      elevation: 5,
      shadowColor: AppColors.blackColor,
      selectedIndex: index,
      onDestinationSelected: (index) => setState(() {
        this.index = index;
      }),
      destinations: [
        NavigationDestination(
          icon: SvgPicture.asset(
              getNavIcon(
                'home_page_icon',
              ),
              color: AppColors.disableIconGreyColor),
          selectedIcon: SvgPicture.asset(getNavIcon('home_page_icon'),
              color: AppColors.enableIconBlueColor),
          label: "Home",
        ),
        NavigationDestination(
          icon: SvgPicture.asset(getNavIcon('investment_page_icon'),
              color: AppColors.disableIconGreyColor),
          selectedIcon: SvgPicture.asset(getNavIcon('investment_page_icon'),
              color: AppColors.enableIconBlueColor),
          label: "Investment",
        ),
        NavigationDestination(
          icon: SvgPicture.asset(getNavIcon('chat_page_icon'),
              color: AppColors.disableIconGreyColor),
          selectedIcon: SvgPicture.asset(getNavIcon('chat_page_icon'),
              color: AppColors.enableIconBlueColor),
          label: "Chat",
        ),
      ],
    );
  }
}
