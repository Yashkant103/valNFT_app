import 'dart:developer';
import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:valNFT/consts.dart';
import 'package:valNFT/pages/card_info_screen.dart';
import 'package:http/http.dart' as http;

class ApiData extends StatefulWidget {
  const ApiData({super.key});

  @override
  _DataFromApiState createState() => _DataFromApiState();
}

class _DataFromApiState extends State<ApiData> {
  int _index = 0;
  Future getUserData() async {
    var response = await http.get(Uri.https('630c473353a833c53426bfc3.mockapi.io','valnft'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["name"], u["userName"], u["floorPrice"], u["avatar"], u["role"], u["detail"], u["wallet"], u["owner"]);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API Data'),
          // centerTitle: API,
        ),
        body: FutureBuilder(
          future: getUserData(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Scaffold(
                backgroundColor: Colors.blueGrey,
                body: Center(
                    child: CircularProgressIndicator()
                ),
              );
            }
            else{
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    return Card(
                      child: Column(
                        children: ListTile(
                            title: Text(snapshot.data[i].name , style: TextStyle(fontSize: 20),),
                            subtitle: Text(snapshot.data[i].userName, style: TextStyle(fontSize: 15),),
                            trailing: Text(snapshot.data[i].floorPrice+" VP ", style: TextStyle(fontSize: 18),)),
                      ),
                    );
                  });
            }
          },
        ));
  }
}

class User{
  final String name, username, floorPrice, avatar, role, detail, wallet, owner;
  User(this.name, this.username, this.floorPrice, this.avatar, this.role, this.detail, this.wallet, this.owner);
}
