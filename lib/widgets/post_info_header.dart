import 'package:flutter/material.dart';

class PostInfoHeader extends StatelessWidget implements PreferredSizeWidget {
  const PostInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(child: Icon(Icons.arrow_back_ios_new_rounded)),
      title: Text("나의 게시판 앱", style: TextStyle(fontWeight: FontWeight.w700)),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); /* kToolbarHeight = 56 */
}
