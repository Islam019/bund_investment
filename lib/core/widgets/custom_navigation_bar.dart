// ignore_for_file: deprecated_member_use

import 'package:bund/core/utils/load_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  final PageController pageController = PageController(initialPage: 0);

  final bottomNavigationBarItem = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(getNavIcon('home_page_icon')),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(getNavIcon('investment_page_icon')),
      label: 'Investment',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(getNavIcon('chat_page_icon')),
      label: 'Chat',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationBarItem,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
