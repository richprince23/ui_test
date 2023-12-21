import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/screens/posts_page.dart';
import 'package:ui_test/widgets/bottom_nav.dart';
import 'package:ui_test/widgets/nav_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final kPages = [
    PostsScreen(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<PageState>(builder: (context, page, child) {
      return Scaffold(
        body: kPages[page.curPage],
        bottomNavigationBar: const BottomNavBar(),
      );
    });
  }
}
