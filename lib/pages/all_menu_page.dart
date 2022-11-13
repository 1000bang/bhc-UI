import 'package:bhc/pages/all_menu_second_page.dart';
import 'package:bhc/pages/event_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navi.dart';
import '../components/menu_item.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bulidBhcAppBar(context),
      bottomNavigationBar: BottomNavi(),
      body: SafeArea(
        child: Column(
          children: [Expanded(child: MyMenuTapBar())],
        ),
      ),
    );
  }
}

Widget _buildMenu(imageName, foodName, price) {
  return SizedBox(
    height: 200,
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/$imageName.png',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

AppBar _bulidBhcAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 50,
    leading: IconButton(
      icon: Icon(Icons.menu, color: Colors.black87),
      onPressed: () {},
    ),
    actions: [
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {
              print('눌러짐');
              Navigator.pushNamed(context, '/menu');
              // AllMenuSecondPage();
            },
            icon: Icon(
              Icons.qr_code,
              color: Colors.black87,
            ),
          ),
        ],
      )
    ],
    elevation: 0,
  );
}

class MyMenuTapBar extends StatefulWidget {
  const MyMenuTapBar({Key? key}) : super(key: key);

  @override
  State<MyMenuTapBar> createState() => _MyMenuTapBarState();
}

class _MyMenuTapBarState extends State<MyMenuTapBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: _buildTabBarView(),
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      labelColor: Colors.grey,
      controller: _tabController,
      tabs: [
        Tab(
          child: Text(
            'NEW&BEST',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '치킨 메뉴',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '사이드/소스 메뉴',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '음료',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '기타',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildTabBarView() {
    return Container(
      color: Colors.white,
      child: TabBarView(
        controller: _tabController,
        children: [
          _buildNewBests(),
          _buildChickenMenu(),
          _buildSideMenu(),
          _buildDrink(),
          _buildOther()
        ],
      ),
    );
  }
}

Widget _buildNewBests() {
  return ListView(
    children: [
      _buildMenu('골드킹', '골드킹', '25,500원'),
      Divider(
        height: 3,
      ),
      _buildMenu('맛초킹', '맛초킹', '25,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('뿌링클', '뿌링클', '25,500원'),
      Divider(
        height: 3,
      ),
      _buildMenu('빅콜팝', '빅콜팝', '8,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('치퐁당', '치퐁당', '25,500원'),
      Divider(
        height: 3,
      ),
      _buildMenu('분모자로제떡볶이', '분모자로제떡볶이', '20,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('빨간소떡', '빨간소떡', '4,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('뿌링소떡', '뿌링소떡', '4,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('하바네로', '하바네로', '26,000원'),
    ],
  );
}

Widget _buildChickenMenu() {
  return ListView(
    children: [
      _buildMenu('치퐁당', '치퐁당', '20,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('골드킹', '골드킹', '20,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('뿌링클', '뿌링클', '25,500원'),
      Divider(
        height: 3,
      ),
      _buildMenu('맛초킹', '맛초킹', '25,500원'),
      Divider(
        height: 3,
      ),
    ],
  );
}

Widget _buildSideMenu() {
  return ListView(
    children: [
      _buildMenu('크림치즈트위스트', '크림치즈 트위스트', '5,500원'),
      Divider(
        height: 3,
      ),
      _buildMenu('빅콜팝', '빅콜팝', '11,500원'),
      Divider(
        height: 3,
      ),
      _buildMenu('빨간소떡', '빨간소떡', '3,000원'),
      Divider(
        height: 3,
      ),
      _buildMenu('뿌링소떡', '뿌링소떡', '3,500원'),
      Divider(
        height: 3,
      ),
    ],
  );
}

Widget _buildDrink() {
  return ListView();
}

Widget _buildOther() {
  return ListView();
}
