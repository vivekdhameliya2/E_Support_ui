import 'package:e_supports/Screen/Order_Detail_screen.dart';
import 'package:e_supports/models/feature.dart';
import 'package:flutter/material.dart';

import 'Order_detail_Screen_pending.dart';
import 'orderScreen.dart';
import 'order_detail_screen_approve_Screen.dart';

class MoreGameScreen extends StatefulWidget {
  @override
  _MoreGameScreenState createState() => _MoreGameScreenState();
}

class _MoreGameScreenState extends State<MoreGameScreen> {
  List<Feature> stories = [
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
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "Call Of Duty"),
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "Call Of Duty"),
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "Call Of Duty"),
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "Call Of Duty"),
  ];

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
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: size.width * 0.04,
                                left: size.width * 0.2,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "More Games",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
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
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListView.builder(
                        itemCount: stories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (stories[index] == stories[0])
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return OrderDetailScreen(story: stories);
                                    },
                                  ),
                                );
                              if (stories[index] == stories[1])
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return OrderDetailScreenPending();
                                    },
                                  ),
                                );
                                if (stories[index] == stories[2])
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return OrderApproveScreen();
                                      
                                    },
                                  ),
                                );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            child: Image.network(
                                              stories[index].image,
                                              fit: BoxFit.cover,
                                              height: 70.0,
                                              width: 70.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          stories[index].name,
                                        ),
                                      ],
                                    ),
                                    if ((index + 1) != stories.length)
                                      Divider(
                                        thickness: 0.5,
                                        color: Colors.grey[300],
                                      )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
