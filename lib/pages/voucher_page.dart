import 'package:flutter/material.dart';

import '../components/bottom_navi.dart';
import '../components/drawer.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: _bulidBhcAppBar(),
      bottomNavigationBar: BottomNavi(),
      body: ListView(
        children: [
          Image.asset("assets/voucher.png", fit: BoxFit.cover,),
          _bulidTextButton("나에게 선물하기", Colors.yellowAccent),
          SizedBox(height: 10,),
          _bulidTextButton("친구에게 선물하기", Colors.white),
          SizedBox(height: 20,),
        ],
      ),);
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

  TextButton _bulidTextButton(String text, Color backgroundColor) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text, style: TextStyle(color: Colors.black87, fontSize: 18),),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.yellowAccent)),),
      ),);
  }
}