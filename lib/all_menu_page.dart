import 'package:flutter/material.dart';

import 'components/bottom_navi.dart';
import 'components/menu_item.dart';


class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bulidBhcAppBar(),
      bottomNavigationBar: BottomNavi(),
      body: ListView(
        children: [
          MenuItems(imageName: "assets/골드킹.png", price:"25000" , title: "골드킹"),
          Divider(height: 3,),
          MenuItems(imageName: "assets/맛초킹.png", price:"25000" , title: "맛초킹"),
          Divider(height: 3,),
          MenuItems(imageName: "assets/뿌링클.png", price:"25000" , title: "뿌링클"),
          Divider(height: 3,),
          MenuItems(imageName: "assets/빅콜팝.png", price:"25000" , title: "빅콜팝"),
          Divider(height: 3,),
          MenuItems(imageName: "assets/치퐁당.png", price:"25000" , title: "치퐁당"),

        ],

      ),);
  }
}

AppBar _bulidBhcAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 50,
    leading: IconButton(
      icon: Icon(Icons.menu, color: Colors.black87),
      onPressed: () {},
    ),
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