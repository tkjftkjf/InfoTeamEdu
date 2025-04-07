import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key, required this.title, this.isDepth = false});
  final String title;
  final bool isDepth;

  @override
  Widget build(BuildContext context) {
    if (isDepth) {
      return AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
        centerTitle: true,
      );
    } else {
      return AppBar(
        automaticallyImplyLeading: false,
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          GestureDetector(child: SvgPicture.asset(Assets.icons.search)),
          SizedBox(width: 16),
          GestureDetector(child: SvgPicture.asset(Assets.icons.write)),
        ],
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
