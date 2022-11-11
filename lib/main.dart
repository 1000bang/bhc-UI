import 'package:bhc/all_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:bhc/event_page.dart';

import 'main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainPage(),

    initialRoute: "/home",
    routes: {
      "/home": (context) => MainPage(),
      "/event": (context) => EventPage(),
      "/menu": (context) => MenuPage(),

    }
    );
  }
}


