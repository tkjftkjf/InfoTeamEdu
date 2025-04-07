import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/header.dart';
import 'package:flutter_edu_first_task/widgets/input_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: "로그인", isDepth: true),
      body: Container(
        padding: EdgeInsets.all(18),
        child: ListView(
          children: [
            InputWidget(title: '이메일', keyboardType: TextInputType.emailAddress),
            SizedBox(height: 20),
            InputWidget(
              title: '비밀번호',
              keyboardType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}
