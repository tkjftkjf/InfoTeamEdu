import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(children: [Post(hasImage: true)]),
    );
  }
}
