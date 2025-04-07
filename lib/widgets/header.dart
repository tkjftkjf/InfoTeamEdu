import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({
    super.key,
    required this.title,
    this.isDepth = false,
    this.hasButton = true,
  });
  final String title;
  final bool isDepth;
  final bool hasButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          isDepth
              ? GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new_rounded),
              )
              : null,
      automaticallyImplyLeading: false,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
      centerTitle: isDepth,
      actions:
          hasButton
              ? [
                GestureDetector(child: SvgPicture.asset(Assets.icons.search)),
                SizedBox(width: 16),
                GestureDetector(child: SvgPicture.asset(Assets.icons.write)),
                SizedBox(width: 20),
              ]
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
