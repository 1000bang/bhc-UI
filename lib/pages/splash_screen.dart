import 'package:flutter/material.dart';

import 'main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MainPage();
            },
          ),
        );
      },
    );

    return Container(
      padding: EdgeInsets.all(16.0),
      // hex code - 0xFFFFFF 0x : 16진수
      color: Colors.white,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
              ),
              CircularProgressIndicator(color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
