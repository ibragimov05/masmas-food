import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.16%20Home/1.16_page.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  int _currentPage = 0;

  List<Widget> pages = [
    Home(),
    Placeholder(),
    Placeholder(),
  ];

  changePage(int index) => setState(() => _currentPage = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: pages[_currentPage]),

          /// My Custom Bottom Navigation Bar
          Container(
            width: double.infinity,
            height: 74.h,
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 8.h,
                  offset: const Offset(1, 0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => changePage(0),
                  child: Icon(Icons.abc_outlined),
                ),
                GestureDetector(
                  onTap: () => changePage(1),
                  child: Icon(Icons.format_list_bulleted_add),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
