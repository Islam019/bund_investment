// ignore_for_file: deprecated_member_use

import 'package:bund/core/themes/app_colors.dart';
import 'package:bund/core/utils/load_assets.dart';
import 'package:bund/features/chat/presentation/pages/chat_screen.dart';
import 'package:bund/features/home/presentation/pages/home_screen.dart';
import 'package:bund/features/investment/presentation/pages/investment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final PageController pageController = PageController(initialPage: 0);

  final bottomNavigationBarItem = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        getNavIcon('home_page_icon'),
        color: AppColors.hintGreyColor,
      ),
      activeIcon: SvgPicture.asset(getNavIcon('home_page_icon')),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(getNavIcon('investment_page_icon')),
      activeIcon: SvgPicture.asset(
        getNavIcon('investment_page_icon'),
        color: AppColors.primaryBlueColor,
      ),
      label: 'Investment',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(getNavIcon('chat_page_icon')),
      activeIcon: SvgPicture.asset(
        getNavIcon('chat_page_icon'),
        color: AppColors.primaryBlueColor,
      ),
      label: 'Chat',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.scaffoldWhiteColor,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: bottomNavigationBarItem,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            // currentIndex = index;
          });
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut);
        },
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          const HomeScreen(),
          InvestmentScreen(),
          const ChatScreen(),
        ],
      ),
    );
  }
}
