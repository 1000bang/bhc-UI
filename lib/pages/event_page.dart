import 'package:bhc/constants.dart';
import 'package:bhc/components/event_compo.dart';
import 'package:flutter/material.dart';
import '../components/bottom_navi.dart';
import '../components/drawer.dart';
class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: _bulidBhcAppBar(),
      bottomNavigationBar: BottomNavi(),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Expanded(child: EventTab()),
            ],
          ),
        ),
      ),
    );
  }
}

class EventTab extends StatefulWidget {
  const EventTab({Key? key}) : super(key: key);

  @override
  State<EventTab> createState() => _EventTabState();
}

class _EventTabState extends State<EventTab>with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: [
      Tab(child: Text("진행 이벤트", style: TextStyle(color: Colors.black87),)),
      Tab(child: Text("종료 이벤트", style: TextStyle(color: Colors.black87),)),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      Container(
        alignment: Alignment.center,
        color: kSecondaryColor,
        child: Text("진행중인 이벤트가 없습니다.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      Container(child: ListView(
        children: [
          EventItem(title: "BHC 치킨 2000원 즉시 할인 !", date: "2022.10.25 ~ 2022.10.30", image: "assets/event1.png"),
          EventItem(title: "BHC X 컴프야 V22 치킨박스콜라보 !", date: "2022.10.18 ~ 2022.10.23", image: "assets/event2.png"),
          EventItem(title: "BHC 치킨 인기 12종 2000원 즉시 할인 !", date: "2022.09.20 ~ 2022.09.28", image: "assets/event3.png"),
          EventItem(title: "BHC 치킨 2000원 즉시 할인", date: "2022.08.23 ~ 2022.08.28", image: "assets/event4.png"),
          EventItem(title: "BHC 치킨 2000원 즉시 할인", date: "2022.06.07 ~ 2022.06.27", image: "assets/event5.png"),
          EventItem(title: "BHC 치퐁당 클라우드 생 드래프트 할인 프로모션", date: "2022.06.07 ~ 2022.06.22", image: "assets/event6.png"),


        ],
      ),),
    ]);
  }


}

AppBar _bulidBhcAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black87),
    backgroundColor: Colors.white,
    toolbarHeight: 50,
    title: Text("이벤트", style: TextStyle(color: Colors.black87),),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black87,
        ),
      )
    ],
    elevation: 0,
  );
}