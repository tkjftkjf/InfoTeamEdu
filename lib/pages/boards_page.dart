import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/board.dart';

class BoardsPage extends StatefulWidget {
  const BoardsPage({super.key});

  @override
  State<BoardsPage> createState() => _BoardsPageState();
}

class _BoardsPageState extends State<BoardsPage> {
  final Uri url = Uri.https('https://api.newbie.gistory.me', 'boards');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(children: [Board(), Board(), Board()]),
    );
  }
}
