import 'package:flutter/material.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Text("StatsScreen"),
        ));
  }
}
