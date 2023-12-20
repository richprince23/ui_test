import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/widgets/nav_item.dart';
import 'package:unicons/unicons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Colors.green,
      selectedIndex: context.watch<PageState>().curPage,
      elevation: 0.5,
      height: 50,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      destinations: [
        NavItem(icon: UniconsLine.home_alt, index: 0),
        NavItem(icon: UniconsLine.globe, index: 1),
        NavItem(icon: UniconsLine.comment, index: 2),
        NavItem(icon: UniconsLine.inbox, index: 3),
      ],
    );
  }
}
