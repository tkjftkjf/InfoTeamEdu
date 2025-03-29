import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/pages/boards_page.dart';
import 'package:flutter_edu_first_task/pages/home_page.dart';
import 'package:flutter_edu_first_task/widgets/header.dart';
import 'package:flutter_edu_first_task/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '나의 게시판 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xffF8F8F8),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomePage(), BoardsPage(), Profile()];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: _pages[_currentIndex],
      bottomNavigationBar: Navbar(
        currentPageIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}

/* 더미 */
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "이곳은 프로필 페이지 입니다.",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
    );
  }
}
