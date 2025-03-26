import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/header.dart';
import 'package:flutter_edu_first_task/widgets/navbar.dart';
import 'package:flutter_edu_first_task/widgets/post.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [Post(hasImage: true)]),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
