import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatelessWidget {
  final Function(int) onTap;
  final int currentPageIndex;
  const Navbar({
    super.key,
    required this.onTap,
    required this.currentPageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPageIndex,
      onTap: onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(Assets.icons.homeFilled),
          icon: SvgPicture.asset(Assets.icons.homeOutlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(Assets.icons.viewGridFilled),
          icon: SvgPicture.asset(Assets.icons.viewGridOutlined),
          label: 'Board',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(Assets.icons.profileFilled),
          icon: SvgPicture.asset(Assets.icons.profileOutline),
          label: 'Profile',
        ),
      ],
    );
  }
}
