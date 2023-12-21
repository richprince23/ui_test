import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/constants.dart';

class NavItem extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NavItem({super.key, required this.icon, required this.index});
  final IconData icon;
  final int index;
  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  int get curPage => Provider.of<PageState>(context, listen: false).curPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<PageState>(context, listen: false).setPage(widget.index);
      },
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              widget.icon,
              color: curPage == widget.index ? priCol : Colors.grey,
            ),
            curPage == widget.index
                ? Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: 40,
                    height: 5,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: priCol,
                    ),
                    // color: selectedIndex == 0 ? priCol : Colors.transparent,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class PageState extends ChangeNotifier {
  int _curPage = 0;

  // get current page
  get curPage => _curPage;

  // set current page
  void setPage(int page) {
    _curPage = page;
    notifyListeners();
  }
}
