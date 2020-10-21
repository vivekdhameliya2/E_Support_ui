import 'package:e_supports/Screen/Profile_screen.dart';
import 'package:e_supports/Screen/message_screen.dart';
import 'package:e_supports/Screen/notification_screen.dart';
import 'package:e_supports/Screen/post_screen.dart';
import 'package:e_supports/models/feature.dart';
import 'package:e_supports/models/post.dart';
import 'package:e_supports/widget/feature_games.dart';
import 'package:flutter/material.dart';

import 'orderScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int currentPage = 0;
  int currentTab = 0;
  TabController tabBarController;
  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<Feature> _stories = [
      Feature("https://images.financialexpress.com/2019/08/freefire.jpg",
          "Free Fire"),
      Feature(
          "https://storage.googleapis.com/kaggle-media/competitions/PUBG/PUBG%20Inlay.jpg",
          "Pubg"),
      Feature(
          "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
          "Call Of Duty"),
      Feature("https://images.financialexpress.com/2019/08/freefire.jpg",
          "Free Fire"),
      Feature("https://images.financialexpress.com/2019/08/freefire.jpg",
          "Free Fire"),
      Feature(
          "https://storage.googleapis.com/kaggle-media/competitions/PUBG/PUBG%20Inlay.jpg",
          "Pubg"),
      Feature(
          "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
          "Call Of Duty"),
    ];
    _stories.add(
      Feature(
          "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
          "Call Of Duty"),
    );
    List<Post> posts = [
      Post(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Nikki",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Ellie",
        "25",
        "799",
        "Wed Jun 16 2021",
      ),
      Post(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Albert",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Orie",
        "25",
        "799",
        "Wed Jun 16 2021",
      ),
      Post(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Cleveland Gibson",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Leora",
        "25",
        "799",
        "Wed Jun 16 2021",
      ),
      Post(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Dorthy",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Saige",
        "25",
        "799",
        "Wed Jun 16 2021",
      ),
    ];
    final size = MediaQuery.of(context).size;
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/spachlogo.png",
              fit: BoxFit.cover,
              height: size.height,
              width: size.width,
            ),
            Positioned(
              top: 5,
              child: Column(
                children: [
                  Container(
                    height: size.width * 0.15,
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.04, top: size.width * 0.01),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 12.0),
                            child: Container(
                              height: size.width,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                  hintText: "Search game,player id",
                                  hintStyle: TextStyle(
                                      letterSpacing: 0.5,
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return NotificationScreen();
                                  },
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: Container(
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      size: size.width * 0.08,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      right: 2,
                                      child: Container(
                                        height: 14.0,
                                        width: 14.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: Colors.red,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "5",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height - ((size.width * 0.20) + 5),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Feature Game',
                              style: TextStyle(
                                fontSize: 23,
                                foreground: Paint()..shader = linearGradient,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FeatureGames(stories: _stories),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Following',
                                  style: TextStyle(
                                    fontSize: 22,
                                    foreground: Paint()
                                      ..shader = linearGradient,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  ' . ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'For You',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  ' . ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Nearby',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[400],
                                    //foreground: Paint()..shader = linearGradient,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          PostScreen(
                            posts: posts,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          elevation: 0.0,
          onPressed: null,
          backgroundColor: Colors.white,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
              ),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30.0,
                    color: Color(
                      0xFF7013F0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: Color(
                          0xFF7013F0,
                        ),
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return OrderScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.clean_hands,
                    size: 30.0,
                    color: Colors.grey[400],
                  ),
                  Text(
                    "order",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 0.0,
                    ),
                    onPressed: null),
                Text("")
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return MessageScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        size: 30.0,
                        color: Colors.grey[400],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 16.0,
                          width: 16.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text(
                              "9+",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("Message",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12.0))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 30.0,
                    color: Colors.grey[400],
                  ),
                  Text("Profile",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12.0))
                ],
              ),
            ),
            //Text("Home"),
          ],
        ),
        //notchedShape: CircularNotchedRectangle(),
        //color: Colors.blueGrey,
      ),
    );
  }
}
