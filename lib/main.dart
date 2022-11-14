import 'package:bhc/pages/all_menu_page.dart';
import 'package:bhc/pages/all_menu_second_page.dart';
import 'package:bhc/pages/find_store_page.dart';
import 'package:bhc/pages/splash_screen.dart';
import 'package:bhc/pages/voucher_page.dart';
import 'package:flutter/material.dart';
import 'package:bhc/pages/event_page.dart';

import 'pages/main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),

    initialRoute: "/splash",
    routes: {
      "/splash": (context) => SplashScreen(),
      "/home": (context) => MainPage(),
      "/event": (context) => EventPage(),
      "/menu": (context) => AllMenuSecondPage(),
      "/secondMenu": (context) => MenuPage(),
      "/voucher": (context) => VoucherPage(),
      "/findstore": (context) => FindStorePage(),

    }
    );
  }
}


