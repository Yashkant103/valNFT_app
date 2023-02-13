import 'dart:ui';

import 'package:flutter/material.dart';

import '../consts.dart';

class CardInfoScreen extends StatefulWidget {
  const CardInfoScreen({super.key});

  @override
  State<CardInfoScreen> createState() => _CardInfoScreenState();
}

class _CardInfoScreenState extends State<CardInfoScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          APPBARGRADIENT_1,
          APPBARGRADIENT_2,
          APPBARGRADIENT_3,
          APPBARGRADIENT_4,
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(11.0),
                    height: screenSize.height * 0.99,
                    width: screenSize.width * 0.165,
                    decoration: BoxDecoration(
                      color: SREACHNAVBK,
                      borderRadius: BorderRadius.circular(
                          (screenSize.width * 0.175) / 2),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.6, sigmaY: 0.6),
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            " Ends in",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "${DateTime.now().hour} H :${DateTime.now().minute} M : ${DateTime.now().second} s ",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(11.0),
                    height: screenSize.height * 0.99,
                    width: screenSize.width * 0.165,
                    decoration: BoxDecoration(
                      color: SREACHNAVBK,
                      borderRadius: BorderRadius.circular(
                          (screenSize.width * 0.175) / 2),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.apps_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Card(
                color: Colors.transparent,
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Colors.blueAccent,
                child: Container(
                  margin: const EdgeInsets.all(11.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/images/1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "The Rift Walker",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "#Yoru",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(11.0),
                            height: screenSize.height * 0.99,
                            width: screenSize.width * 0.165,
                            decoration: BoxDecoration(
                              color: SREACHNAVBK,
                              borderRadius: BorderRadius.circular(
                                  (screenSize.width * 0.175) / 2),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Floor Price",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "56",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: "  VP",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Owner",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "256",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: "  Player",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Role",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    "Duelist",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: const Text(
                                        "Japanese native, Yoru rips holes straight through"
                                            " reality to infiltrate enemy lines unseen. Using...",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    "  Read More",
                                    style: TextStyle(
                                        color: SHOWMOREFCOLOR,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: SREACHNAVBK,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          /* Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Dismissible(
                              direction: DismissDirection.startToEnd,
                              key: const Key("abc"),
                              child: Container(
                                width: screenSize.width * 0.5,
                                height: screenSize.height * 0.05,
                                decoration: BoxDecoration(
                                  color: BUTTONCOLOR,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Slide to Place Bid",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ), */
                          myDissmissibleWidget(screenSize: screenSize),
                          myDissmissibleWidget(screenSize: screenSize),
                          myDissmissibleWidget(screenSize: screenSize),
                          myDissmissibleWidget(screenSize: screenSize),
                          myDissmissibleWidget(screenSize: screenSize),
                          myDissmissibleWidget(screenSize: screenSize),
                          myDissmissibleWidget(screenSize: screenSize),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text(
                              " > ",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.2),
                                  fontSize: 22),
                            ),
                            Text(
                              "> ",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 22),
                            ),
                            const Text(
                              "> ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            const Text(
                              "> ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            Text(
                              " > ",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.2),
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget myDissmissibleWidget({required var screenSize}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Dismissible(
      direction: DismissDirection.startToEnd,
      key: const Key("abc"),
      child: Container(
        width: screenSize.width * 0.5,
        height: screenSize.height * 0.05,
        decoration: BoxDecoration(
          color: BUTTONCOLOR,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Slide to Place Bid",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
      ),
    ),
  );
}
