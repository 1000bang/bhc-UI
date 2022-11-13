import 'package:bhc/pages/event_page.dart';
import 'package:flutter/material.dart';

import '../pages/main_page.dart';

class BottomNavi extends StatelessWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSelectorButton(context, 0, Icons.home, "홈"),
          _buildSelectorButton(context, 1, Icons.menu_open_outlined, "전체메뉴"),
          _buildSelectorButton(context, 2, Icons.control_point_sharp, "매장찾기"),
          _buildSelectorButton(context, 3, Icons.tips_and_updates, "상품권"),
          _buildSelectorButton(context, 4, Icons.event_available, "이벤트"),
        ],
      ),
    );
  }

  Widget _buildSelectorButton(
    BuildContext context,
    int id,
    IconData mIcon,
    String name,
  ) {
    return Container(
      width: 70,
      height: 70,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              if (id == 4) {
                Navigator.popAndPushNamed(context, "/event");
              } else if (id == 0) {
                Navigator.popAndPushNamed(context, "/home");
              } else if (id == 1) {
                Navigator.popAndPushNamed(context, "/menu");
              }
            },
            icon: Icon(
              mIcon,
              color: Colors.black87,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
