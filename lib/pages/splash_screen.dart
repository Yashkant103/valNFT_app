import 'package:flutter/material.dart';

class NftValSpash extends StatefulWidget {
  const NftValSpash({super.key});

  @override
  State<NftValSpash> createState() => _NftValSpashState();
}

class _NftValSpashState extends State<NftValSpash> {
  var screensize;
  @override
  Widget build(BuildContext context) {
    screensize = MediaQuery.of(context).size;
    return Center(
      child: Stack(
          // fit: StackFit.expand,
          children: [
            Column(
              children: [
                Container(
                  height: screensize.height * 0.4,
                  width: screensize.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(screensize.width * 0.2),
                  ),
                ),
                Container(
                  height: screensize.height * 0.7,
                  width: screensize.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius:
                        BorderRadius.circular(screensize.width * 0.25),
                  ),
                ),
                Container(
                  height: screensize.height * 0.7,
                  width: screensize.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade400,
                    borderRadius:
                        BorderRadius.circular(screensize.width * 0.25),
                  ),
                ),
                Container(
                  height: screensize.height * 0.01,
                  width: screensize.width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(screensize.width * 0.1),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
