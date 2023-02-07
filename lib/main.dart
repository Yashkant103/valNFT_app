import 'package:flutter/material.dart';
import 'package:valNFT/pages/anim_ripple.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: AnimRipple(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
