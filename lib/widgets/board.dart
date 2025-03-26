import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(14, 15, 14, 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "게시물 제목",
            style: TextStyle(
              color: const Color(0xFF252525),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}
