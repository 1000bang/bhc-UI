import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 200,
        height:double.infinity, // <---- 화면 끝까지 차지하는 방법
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/logo.png",fit: BoxFit.fill,)),
            Text("전체메뉴 " , style: TextStyle(color: Colors.white, height: 5), ),
            Text("공지사항 " , style: TextStyle(color: Colors.white, height: 5),),
            Text("이벤트" , style: TextStyle(color: Colors.white, height: 5),),
            Text("주문내역 확인 " , style: TextStyle(color: Colors.white, height: 5),),
            Text("FAQ" , style: TextStyle(color: Colors.white, height: 5),)


          ],
        ),
      ),
    );
  }
}
