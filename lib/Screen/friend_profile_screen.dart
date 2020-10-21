import 'package:e_supports/models/megride.dart';
import 'package:e_supports/widget/followers_info.dart';
import 'package:e_supports/widget/me_gride_view.dart';
import 'package:flutter/material.dart';

class FriendProfileScreen extends StatefulWidget {
  @override
  _FriendProfileScreenState createState() => _FriendProfileScreenState();
}

class _FriendProfileScreenState extends State<FriendProfileScreen> {
  @override
  Widget build(BuildContext context) {
    List<MeGride> gride = [
      MeGride(
          "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1602739449338-3a1968d922fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1503443062224-9f77d743cf25?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1519307168999-3b9d45b0df1c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1539318126133-470bfd5f8863?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1602739449338-3a1968d922fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1503443062224-9f77d743cf25?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1519307168999-3b9d45b0df1c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1539318126133-470bfd5f8863?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1602739449338-3a1968d922fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1503443062224-9f77d743cf25?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1519307168999-3b9d45b0df1c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
      MeGride(
          "https://images.unsplash.com/photo-1539318126133-470bfd5f8863?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          "",
          "",
          "",
          ""),
    ];
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
              height: 180,
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
              top: 110,
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
              top: 212,
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
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210,
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
              top: 230,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: Text(
                  'ID: 56132868',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280,
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
                        child: Text(
                          '榮譽之王',
                          style: TextStyle(
                            fontSize: 15,
                            foreground: Paint()..shader = linearGradient,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '上帝之塔',
                          style: TextStyle(
                            fontSize: 15,
                            foreground: Paint()..shader = linearGradient,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'MBLL',
                          style: TextStyle(
                            fontSize: 15,
                            foreground: Paint()..shader = linearGradient,
                            fontWeight: FontWeight.w400,
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
              top: 240,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '羅興亞國王-位（超級明星傅）添加新！',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 325,
              child: followers_info(
                size: size,
                color: Colors.black87,
              ),
            ),
            Positioned(
              top: 365,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Item',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            Positioned(
              top: 515,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Post',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            Positioned(
              top: 395,
              child: Container(
                height: 70,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "gsffs",
                                    style: TextStyle(
                                      // foreground: Paint()..shader = linearGradient,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'sgvzxkaf',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 180),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 75,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(colors: <Color>[
                                        Color(0xFF7013F0),
                                        Color(0xFFCB0FF9)
                                      ]),
                                    ),
                                    child: Text(
                                      'order',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "gsffs",
                                    style: TextStyle(
                                      // foreground: Paint()..shader = linearGradient,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'sgvzxkaf',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 180),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 75,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(colors: <Color>[
                                        Color(0xFF7013F0),
                                        Color(0xFFCB0FF9)
                                      ]),
                                    ),
                                    child: Text(
                                      'order',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 470,
              child: Container(
                color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.5,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          '+Follow',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.5,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Chat',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 550, 0, 0),
              child: MeGridView(
                grides: gride,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
