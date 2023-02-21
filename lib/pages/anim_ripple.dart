import 'dart:async';
import 'package:flutter/material.dart';
import 'package:valNFT/pages/login_screen.dart';

class AnimRipple extends StatefulWidget {
  const AnimRipple({super.key});

  @override
  State<AnimRipple> createState() => _AnimRippleState();
}

class _AnimRippleState extends State<AnimRipple>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationcontroller;
  @override
  void initState() {
    super.initState();
    _animationcontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    _animationcontroller.addListener(() {
      setState(() {});
    });
    _animationcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
          () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
    );
    return Center(
      child: Stack(
          alignment: Alignment.center,
          children: arr
              .map(
                (radius) => Container(
                  width: radius * _animationcontroller.value,
                  height: radius * _animationcontroller.value,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Colors.blue.withOpacity(1 * _animationcontroller.value),
                  ),
                  child: Icon(
                    Icons.gamepad_sharp,
                    size: 90,
                    color: Colors.red.shade600,
                  ),
                ),
              )
              .toList()),
    );
  }
}

var arr = [150, 200, 250, 300, 350];
