import 'package:e_supports/widget/message_screen_element.dart';
import 'package:flutter/material.dart';

import 'Profile_screen.dart';
import 'home_screen.dart';
import 'orderScreen.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: size.width * 0.04,
                                left: size.width * 0.36,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _OrderModalBottomSheet(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height - ((size.width * 0.35) + 10),
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F7F7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: MessageScreenElement(),
                  ),
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
                colors: <Color>[
                  Color(0xFF7013F0),
                  Color(0xFFCB0FF9),
                ],
              ),
            ),
            child: Icon(
              Icons.add,
            ),
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
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30.0,
                    color: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
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
                  Text("order",
                      style:
                          TextStyle(color: Colors.grey[400], fontSize: 12.0)),
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      size: 30.0,
                      color: Color(
                        0xFF7013F0,
                      ),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 11.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text("Message",
                    style: TextStyle(
                        color: Color(
                          0xFF7013F0,
                        ),
                        fontSize: 12.0))
              ],
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

void _OrderModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext bc) {
        final Shader linearGradient = LinearGradient(
          colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
        ).createShader(
          Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
        );
        return Container(
          child: new Wrap(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Mark all read",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          foreground: Paint()..shader = linearGradient,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Confirm Payment",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          foreground: Paint()..shader = linearGradient,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
