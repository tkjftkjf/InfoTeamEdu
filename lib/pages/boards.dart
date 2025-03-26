import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/board.dart';
import 'package:flutter_edu_first_task/widgets/header.dart';
import 'package:flutter_edu_first_task/widgets/navbar.dart';

class Boards extends StatelessWidget {
  const Boards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [Board(), Board(), Board()]),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
