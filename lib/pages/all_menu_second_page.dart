import 'package:bhc/components/bottom_navi.dart';
import 'package:flutter/material.dart';

class AllMenuSecondPage extends StatelessWidget {
  const AllMenuSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _bulidBhcAppBar(context),
        body: ListView(
          children: [
            Column(
              children: [
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavi(),
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
                print('여기가 눌러짐');
                Navigator.pushNamed(context, '/secondMenu');
              },
              icon: Icon(
                Icons.account_tree_outlined,
                color: Colors.black87,
              ),
            ),
          ],
        )
      ],
      elevation: 0,
    );
  }
}
