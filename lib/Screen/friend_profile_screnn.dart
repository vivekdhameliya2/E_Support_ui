import 'package:e_supports/models/MeGrides.dart';
import 'package:e_supports/widget/followers_info.dart';
import 'package:e_supports/widget/friend_profile_grid.dart';
import 'package:e_supports/widget/friends_profile_item_list.dart';

import 'package:flutter/material.dart';

class FriendProfileScreen extends StatefulWidget {
  @override
  _FriendProfileScreenState createState() => _FriendProfileScreenState();
}

class _FriendProfileScreenState extends State<FriendProfileScreen> {
  List<MeGrides> gride = [
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
    MeGrides(
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/purse.jpg",
              fit: BoxFit.cover,
              height: size.width * 0.7,
              width: size.width,
            ),
            Positioned(
              top: size.height * 0.20,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        20.0,
                      ),
                      topRight: Radius.circular(
                        20.0,
                      ),
                    ),
                    child: Container(
                      width: size.width,
                      height: size.height,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 30),
                                alignment: Alignment.center,
                                width: size.width,
                                child: null),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.135,
              left: size.width * 0.5 - 50,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 90,
                    width: 90,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.285,
              left: size.width * 0.5 + 70,
              child: Container(
                alignment: Alignment.center,
                width: 30,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF7013F0),
                      Color(0xFFCB0FF9),
                    ],
                  ),
                ),
                child: Text(
                  '25',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  width: size.width,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.285,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: Text(
                  'Juliana Weimann',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.32,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: Text(
                  'ID: 56132868',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.35,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: Text(
                  'hey there, lets play games.',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.4,
              child: Container(
                  alignment: Alignment.center,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 15.0, top: 2.0, bottom: 2.0),
                          child: Text(
                            'Fau-g',
                            style: TextStyle(
                              fontSize: 15,
                              foreground: Paint()..shader = linearGradient,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100]),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 2.0),
                          child: Text(
                            'Pubg',
                            style: TextStyle(
                              fontSize: 15,
                              foreground: Paint()..shader = linearGradient,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100]),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 2.0),
                          child: Text(
                            'MBLL',
                            style: TextStyle(
                              fontSize: 15,
                              foreground: Paint()..shader = linearGradient,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  )),
            ),
            Positioned(
              top: size.height * 0.45,
              child: followers_info(
                size: size,
                color: Colors.black87,
              ),
            ),
            Positioned(
              top: size.height * 0.52,
              child: FriendsProfileItemList(),
            ),
            Positioned(
              top: size.width * 1.55,
              child: Container(
                height: 45.0,
                width: size.width,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: FlatButton.icon(
                        onPressed: () {
                          print("follow");
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                        onPressed: () {
                          print("chat");
                        },
                        child: Text(
                          "Chat",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 610, 0, 0),
              child: FriendProfileGridView(
                grides: gride,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
