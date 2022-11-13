import 'package:bhc/components/drawer.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navi.dart';

class FindStorePage extends StatelessWidget {
  const FindStorePage({Key? key}) : super(key: key);

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

              Expanded(child: StoreTab()),
            ],
          ),
        ),
      ),

    );
  }

  AppBar _bulidBhcAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black87),
      backgroundColor: Colors.white,
      toolbarHeight: 50,
      title: Text("매장 찾기", style: TextStyle(color: Colors.black87),),
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


}
class StoreTab extends StatefulWidget {
  const StoreTab({Key? key}) : super(key: key);

  @override
  State<StoreTab> createState() => _StoreTabState();
}

class _StoreTabState extends State<StoreTab>with SingleTickerProviderStateMixin {
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
      Tab(child: Text("매장 검색", style: TextStyle(color: Colors.black87),)),
      Tab(child: Text("현 위치 매장 검색", style: TextStyle(color: Colors.black87),)),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      Container(child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              TextFormField(
                validator: (value) => value!.isEmpty? "Please enter some text": null,
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "매장명을 입력해주세요", // 포커스 가기전 희미한 글씨
                  enabledBorder: OutlineInputBorder( // 사용안할 때 보더
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder( // 포커스가 갔을 때 보더
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedErrorBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),


        ],
      ),),
      Container(child: ListView(
        children: [
          Image.asset("assets/map.png" ,fit: BoxFit.fill,),
          SizedBox(height: 50,),
          Divider(height: 3,),
          _StoreItem("부산 남천점","부산 수영구 남천동로 33"),

          _StoreItem("부산 메트로점","부산 남구 신선로 566"),

          _StoreItem("대연 경성대점", "부산 남구 수영로 322번길 46"),

          _StoreItem("금련산역점","부산 수영구 수영로 540번길 62"),

          _StoreItem("부산 민락점", "부산 수영구 무학로 52번길 52"),


        ],
      ),),
    ]);
  }

  Widget _StoreItem(String name, String addr){
    return Container(child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/store.png" ,fit: BoxFit.fill,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(name, style: TextStyle(fontSize: 25, color: Colors.black87, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text(addr, style: TextStyle(color: Colors.black87),),
          ],
        )
      ],
    ),);

  }



}
