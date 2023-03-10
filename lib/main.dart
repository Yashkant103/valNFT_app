import 'package:flutter/material.dart';
import 'package:valNFT/pages/anim_ripple.dart';
import 'package:valNFT/pages/api_main_screen.dart';
import 'package:valNFT/pages/card_info_screen.dart';
import 'package:valNFT/pages/login_screen.dart';
import 'package:valNFT/pages/api_screen.dart';
import 'package:valNFT/pages/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        // body: AnimRipple()
        // body: DataFromApi(),
        // body: ApiData(),
        body: CardInfoScreen(),
    ),
      debugShowCheckedModeBanner: false,
    );
  }
}
