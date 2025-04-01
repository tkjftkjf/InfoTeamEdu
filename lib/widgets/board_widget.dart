import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/data/models/board_summary_model.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget({super.key, required this.boardSummary});
  final BoardSummary boardSummary;

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
            boardSummary.title,
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
