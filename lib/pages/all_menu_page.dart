import 'package:bhc/pages/all_menu_second_page.dart';
import 'package:bhc/pages/event_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navi.dart';
import '../components/drawer.dart';
import '../components/menu_item.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
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
    iconTheme: IconThemeData(color: Colors.black87),
    backgroundColor: Colors.white,
    toolbarHeight: 50,
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
              print('?????????');
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
            '?????? ??????',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '?????????/?????? ??????',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '??????',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            '??????',
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
      _buildMenu('?????????', '?????????', '25,500???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '25,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '25,500???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '8,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '25,500???'),
      Divider(
        height: 3,
      ),
      _buildMenu('????????????????????????', '????????????????????????', '20,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('????????????', '????????????', '4,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('????????????', '????????????', '4,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('????????????', '????????????', '26,000???'),
    ],
  );
}

Widget _buildChickenMenu() {
  return ListView(
    children: [
      _buildMenu('?????????', '?????????', '20,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '20,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '25,500???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '25,500???'),
      Divider(
        height: 3,
      ),
    ],
  );
}

Widget _buildSideMenu() {
  return ListView(
    children: [
      _buildMenu('????????????????????????', '???????????? ????????????', '5,500???'),
      Divider(
        height: 3,
      ),
      _buildMenu('?????????', '?????????', '11,500???'),
      Divider(
        height: 3,
      ),
      _buildMenu('????????????', '????????????', '3,000???'),
      Divider(
        height: 3,
      ),
      _buildMenu('????????????', '????????????', '3,500???'),
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
