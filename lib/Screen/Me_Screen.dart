import 'package:e_supports/Screen/profile_edit_screen.dart';
import 'package:e_supports/models/megride.dart';
import 'package:e_supports/widget/followers_info.dart';
import 'package:e_supports/widget/me_post_list.dart';
import 'package:flutter/material.dart';

class MeScreen extends StatefulWidget {
  @override
  _MeScreenState createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {
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
              "assets/back.jpg",
              fit: BoxFit.cover,
              height: 200,
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
                              child: null,
                            ),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfileEditScreen()));
                },
                child: Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  width: size.width,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
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
              top: 270,
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
              top: 320,
              child: followers_info(
                size: size,
                color: Colors.black87,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 380, 0, 0),
              child: MePostList(
                grides: gride,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
