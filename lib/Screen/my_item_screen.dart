
import 'package:e_supports/models/my_Item_model.dart';
import 'package:flutter/material.dart';

import 'create_item_screen.dart';
import 'edit_item_screen.dart';
import 'item_Detail_deactivate_screen.dart';

class MyItemScreen extends StatefulWidget {
  @override
  _MyItemScreenState createState() => _MyItemScreenState();
}

class _MyItemScreenState extends State<MyItemScreen> {
  List<MyItemModel> myItemList = [
    MyItemModel(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Dota 2",
      "50",
      "1 week ago",
    ),
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
                                left: size.width * 0.28,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "My Item",
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
                    child: ListView.builder(
                      itemCount: myItemList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ItemDetailDeactivateScreen()));
                              },
                              child: Container(
                                decoration: index == 0
                                    ? BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ))
                                    : BoxDecoration(
                                        color: Colors.white,
                                      ),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 8.0),
                                    child: Row(children: [
                                      Container(
                                        height: 63.0,
                                        width: 83.0,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Container(
                                                height: 63.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  child: Image.network(
                                                    myItemList[index].image,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                myItemList[index].name,
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                '${myItemList[index].diamond} Diamonds',
                                                style: TextStyle(
                                                    color: Color(0xFFCB0FF9),
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                '/Round',
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontSize: 18.0),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Text(
                                                myItemList[index].time,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditItemScreen()));
                                          },
                                          child: Container(
                                            height: 25.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: Color(0xFFCB0FF9),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Edit",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ]) //trailing:

                                    ),
                              ),
                            ),
                            if (!((index + 1) == myItemList.length))
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Divider(
                                  height: 0.5,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateItemScreen()));
                    },
                    child: Text(
                      "Create Item",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
