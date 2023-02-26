import 'dart:developer';
import 'dart:ui';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:valNFT/consts.dart';
import 'package:valNFT/pages/card_info_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  Future getUserData() async {
    var response = await http.get(Uri.https('630c473353a833c53426bfc3.mockapi.io','valnft'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["name"], u["userName"], u["floorPrice"], u["avatar"], u["wallet"]);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            APPBARGRADIENT_1,
            APPBARGRADIENT_2,
            APPBARGRADIENT_3,
            APPBARGRADIENT_4,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder(
          future: getUserData(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i){
                    return SafeArea(
                      child: Column(
                        children: <Widget>[
                          // Top Child Widgets
                          Padding(
                            padding: const EdgeInsets.only(top: 60.0, left: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: SREACHNAVBK,
                                              borderRadius: BorderRadius.circular(25)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: Image.asset(
                                                  "assets/images/gamer.png",
                                                  scale: 6,
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: SREACHNAVBK,
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            child: const Icon(
                                              Icons.notifications_none_rounded,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: 140,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: SREACHNAVBK,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(11.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: SREACHNAVBK,
                                                  borderRadius: BorderRadius.circular(20),
                                                  border: Border.all(color: Colors.white70),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "V",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Padding(
                                                padding:
                                                EdgeInsets.only(bottom: 11.0, left: 5.0),
                                                child: Text(
                                                  "Your Wallet",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                snapshot.data[i].wallet,
                                                // "2391 VP",
                                                style: TextStyle(color: Colors.white, fontSize: 10),
                                              ),
                                              // Text(
                                              //   "VP",
                                              //   style: TextStyle(color: HOVERCOLOR),
                                              // )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                                // Top Child End
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: SREACHNAVBK,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(color: SREACHNAVBK),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(color: SREACHNAVBK),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  hintText: "Search item, collection, etc ...",
                                  hintStyle: const TextStyle(color: Colors.white),
                                ),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Trending  Now",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Text(
                                  "Show More",
                                  style: TextStyle(
                                      color: SHOWMOREFCOLOR, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                fit: StackFit.expand,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                    elevation: 19,
                                    shadowColor: Colors.blueAccent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      // child: Image.asset(
                                      //   "assets/images/1.png",
                                      //   fit: BoxFit.cover,
                                      // ),
                                      child: Image.network(snapshot.data[i].avatar, fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                    top: 15.0,
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 0.6, sigmaY: 0.6),
                                      child: Container(
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            const Text(
                                              "Ends in",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              "${DateTime.now().hour} H :${DateTime.now().minute} M : ${DateTime.now().second}s ",
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
                                  ),
                                  Positioned(
                                    bottom: 20.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
                                        child: Container(
                                          height: 75,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.2),
                                          ),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: const [
                                                      Padding(
                                                        padding: EdgeInsets.all(4.0),
                                                        child: Text(
                                                          // "The Rift Walker",
                                                          snapshot.data[i].name,
                                                          style: TextStyle(
                                                              color: MEDIUMFONTSCOLOR,
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(4.0),
                                                        child: Text(
                                                          // "#YORU",
                                                          snapshot.data[i].username,
                                                          style:
                                                          TextStyle(color: Colors.grey),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
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
                                                            // text: "56",
                                                            text: Text(snapshot.data[i].floorPrice),
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
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 11.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red.shade600,
                                                        borderRadius:
                                                        BorderRadius.circular(25)),
                                                    child: IconButton(
                                                      onPressed: () {
                                                        log("this is pressed");
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                            const SafeArea(
                                                                child: CardInfoScreen()),
                                                          ),
                                                        );
                                                      },
                                                      icon: const Icon(Icons.arrow_outward),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(11.0),
                            decoration: BoxDecoration(
                              color: SREACHNAVBK,
                              borderRadius: BorderRadius.circular(80),
                            ),
                            child: NavigationBar(
                              height: 60,
                              selectedIndex: _index,
                              onDestinationSelected: (value) {
                                _index = value;
                                setState(() {});
                              },
                              destinations: const [
                                NavigationDestination(
                                    icon: Icon(
                                      Icons.home,
                                      color: Colors.red,
                                    ),
                                    label: "Home" ),
                                NavigationDestination(
                                    icon: Icon(
                                      Icons.explore_outlined,
                                      color: Colors.red,
                                    ),
                                    label: "Explore"),
                                NavigationDestination(
                                    icon: Icon(
                                      Icons.stacked_bar_chart,
                                      color: Colors.red,
                                    ),
                                    label: "Static"),
                                NavigationDestination(
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    label: "Favorite"),
                                NavigationDestination(
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.red,
                                    ),
                                    label: "Account"),
                              ],
                              surfaceTintColor: Colors.red,
                              animationDuration: const Duration(milliseconds: 2500),
                              backgroundColor: Colors.transparent,
                              labelBehavior:
                              NavigationDestinationLabelBehavior.onlyShowSelected,
                              shadowColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }
            else {
              return const Scaffold(
                backgroundColor: Colors.blueGrey,
                body: Center(
                  child: CircularProgressIndicator()
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class User{
  final String name, username, floorPrice, avatar, wallet;
  User(this.name, this.username, this.floorPrice, this.avatar, this.wallet);
}