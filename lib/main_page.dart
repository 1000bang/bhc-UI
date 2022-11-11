import 'package:flutter/material.dart';

import 'components/bottom_navi.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _bulidBhcAppBar(),
        body: ListView(
          children: [
            _buildBhcIntroduceMenu(),
            SizedBox(height: 15),
            _buildBhcService(),
            SizedBox(height: 15),
            _buildBhcOrder(),
            SizedBox(height: 15),
          ],
        ),
        bottomNavigationBar: BottomNavi(),
      ),
    );
  }

  Widget _buildBhcIntroduceMenu() {
    return Container(
      width: double.infinity,
      height: 220,
      child: Image.asset(
        'image.png',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildBhcService() {
    return Container(
      width: double.infinity,
      height: 70,
      child: Image.asset(
        'image1.png',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildBhcOrder() {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: 400,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 18),
                      child: Text(
                        'E교환권 주문',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0, top: 9.0),
                      child: Icon(Icons.motorcycle, size: 80),
                    )
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Text(
                          '배달주문',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 3,
                        child: Icon(Icons.motorcycle, size: 150),
                      )
                    ],
                  )),
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Text(
                          '포장주문',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 3,
                        child: Icon(Icons.motorcycle, size: 150),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
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
}
