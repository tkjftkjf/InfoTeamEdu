import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("나의 게시판 앱", style: TextStyle(fontWeight: FontWeight.w700)),
      actions: [
        GestureDetector(child: SvgPicture.asset(Assets.icons.search)),
        SizedBox(width: 16),
        GestureDetector(child: SvgPicture.asset(Assets.icons.write)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
