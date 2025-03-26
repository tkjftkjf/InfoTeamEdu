import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPageIndex,
      onTap: _onItemTapped,
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
