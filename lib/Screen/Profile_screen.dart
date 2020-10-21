import 'package:e_supports/Screen/home_screen.dart';
import 'package:e_supports/Screen/message_screen.dart';
import 'package:e_supports/widget/followers_info.dart';
import 'package:e_supports/widget/profile_gride_menu.dart';
import 'package:flutter/material.dart';

import 'Me_Screen.dart';
import 'my_diamond_wallet.dart';
import 'my_ecoin_wallet_screen.dart';
import 'orderScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  int currentPage = 4;
  int currentTab = 0;
  TabController tabBarController;
  bool varified = true;
  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Color(0xFF7013F0),
        Color(0xFFCB0FF9),
      ],
    ).createShader(
      Rect.fromLTWH(
        0.0,
        0.0,
        150.0,
        70.0,
      ),
    );
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
              top: 30,
              left: size.width * 0.5 - 50,
              child: Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MeScreen(),
                      ),
                    );
                  },
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
            ),
            Positioned(
              top: 135,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: Text(
                  'Juliana Weimann',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 139,
              left: size.width * 0.5 + 70,
              child: Container(
                alignment: Alignment.center,
                width: 25,
                height: 15,
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
              top: 155,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: Text(
                  'ID: 56132868',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: followers_info(
                size: size,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: size.height * 0.32,
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
                      height: size.height * 0.565,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              alignment: Alignment.center,
                              width: size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return MyDiamondWallet();
                                          },
                                        ),
                                      );
                                    },
                                    child: Image(
                                      image: AssetImage(
                                        'assets/diamond.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Diamonds',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '3,500',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (varified != false)
                                    SizedBox(
                                      width: 10,
                                    ),
                                  if (varified != false)
                                    Container(
                                      height: 50,
                                      width: 1,
                                      color: Colors.black87,
                                    ),
                                  if (varified != false)
                                    SizedBox(
                                      width: 10,
                                    ),
                                  if (varified != false)
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) {
                                                  return MyEcoinWalletScreen();
                                                },
                                              ),
                                            );
                                          },
                                          child: Image(
                                            image:
                                                AssetImage('assets/coin.png'),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'E-Coins',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              '0',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              width: size.width,
                              height: 3,
                              color: Colors.grey[100],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Gride_menu(
                              varified: varified,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (varified != false)
              Positioned(
                top: 30,
                left: size.width * 0.5 + 100,
                child: GestureDetector(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          color: Colors.amber,
                          child: Center(
                            child: Column(
                              children: [
                                Text("BottomSheet"),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        foreground: Paint()..shader = linearGradient,
                      ),
                    ),
                  ),
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
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 30.0,
                    color: Color(
                      0xFF7013F0,
                    ),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Color(
                        0xFF7013F0,
                      ),
                      fontSize: 12.0,
                    ),
                  )
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
