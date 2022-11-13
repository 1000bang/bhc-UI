import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(

        width: 200,
        height:double.infinity, // <---- 화면 끝까지 차지하는 방법
        color: Colors.white,

        child: ListView(
          children: [
            AspectRatio(
                aspectRatio: 5/2,
                child: Image.asset("assets/logo.png",fit: BoxFit.fill,)),
            Divider(height: 3,),
            SizedBox(height: 20,),
            _listTile("전체메뉴", Icon(Icons.menu_book_sharp) ),
            _listTile("공지사항", Icon(Icons.flag) ),
            _listTile("매장찾기", Icon(Icons.control_point_outlined) ),
            _listTile("상품권구매", Icon(Icons.tips_and_updates) ),
            _listTile("이벤트", Icon(Icons.event_available) ),

          ],
        ),
      ),
    );
  }

  ListTile _listTile(String text, Icon icons){
    return ListTile(
      leading: icons,
      title: Text(text),
      trailing: Icon(Icons.navigate_next),
      onTap: (){},
    );

  }

}
