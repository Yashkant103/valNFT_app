import 'package:flutter/material.dart';
import 'package:valNFT/pages/account_screen.dart';
import 'package:valNFT/pages/exlpore_screen.dart';
import 'package:valNFT/pages/fav_screen.dart';
import 'package:valNFT/pages/main_screen.dart';
import 'package:valNFT/pages/stats_screen.dart';

class AllPages extends StatefulWidget {
  AllPages({Key? key}) : super(key: key);

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  int selectedIndex = 0;
  List<Widget> li = [
    MainScreen(),
    ExploreScreen(),
    StatsScreen(),
    FavScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Text("Loading..."),
          backgroundColor: Color.fromARGB(255, 12, 17, 19),
          // body: Widgetslist[selectedIndex],
    ));
  }
}
