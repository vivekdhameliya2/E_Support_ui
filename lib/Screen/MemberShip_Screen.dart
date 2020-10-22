import 'package:flutter/material.dart';

import 'MemberShip_rules_screen.dart';

class MemberShipScreen extends StatefulWidget {
  @override
  _MemberShipScreenState createState() => _MemberShipScreenState();
}

class _MemberShipScreenState extends State<MemberShipScreen> {
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
            top: size.height * 0.02,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            Text(
                              "Membership",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MembershipRulesScreen(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.help,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        height: 100,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Positioned(
                                right: 7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Container(
                                    height: 85,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 75,
                              left: 177,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(colors: <Color>[
                                      Color(0xFFefdd1e),
                                      Color(0xFFf83932)
                                    ]),
                                  ),
                                  child: Text(
                                    "VIP0",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "VIP 0",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "360 experience points before reaching VIP 1",
                              style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "VIP 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 7),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              height: 10,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              height: 10,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(colors: <Color>[
                                  Color(0xFFefdd1e),
                                  Color(0xFFf83932)
                                ]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 13),
                      Text(
                        "Consume Diamond to upgrade VIP level by gain experince\npoint and unlock exclusive privileges",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.35,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.62,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 70, right: 10),
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "You have privileges (0/15)",
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 70, left: 10),
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10),
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(10),
                              height: 100,
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.emoji_food_beverage,
                                    size: 40,
                                    color: Colors.grey[400],
                                  ),
                                  Text("Gerson")
                                ],
                              ),
                            );
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
