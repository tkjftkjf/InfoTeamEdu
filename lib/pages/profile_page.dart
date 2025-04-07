import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/pages/login_page.dart';
import 'package:flutter_edu_first_task/pages/sign_up_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  final bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child:
          isLoggedIn
              ? Text('profile')
              : Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('login'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text('signup'),
                  ),
                ],
              ),
    );
  }
}
