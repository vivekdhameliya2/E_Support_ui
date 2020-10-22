import 'package:e_supports/models/game_screen_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FriendsItem extends StatefulWidget {
  @override
  _FriendsItemState createState() => _FriendsItemState();
}

class _FriendsItemState extends State<FriendsItem> {
  List<GameScreenPlayer> playerList = [
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "3",
      "50",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
      "Smit",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "28",
      "4",
      "35",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "3",
      "50",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
      "Smit",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "28",
      "4",
      "35",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "3",
      "50",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
      "Smit",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "28",
      "4",
      "35",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "3",
      "50",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
      "Smit",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "28",
      "4",
      "35",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "3",
      "50",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
      "Smit",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "28",
      "4",
      "35",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "3",
      "50",
      true,
    ),
    GameScreenPlayer(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
      "Smit",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "28",
      "4",
      "35",
      true,
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
                                Navigator.pop(context);
                              }),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: size.width * 0.04,
                                  right: size.width * 0.2),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Ryann's Item",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800),
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
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: playerList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                color: Colors.white,
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
                                                      BorderRadius.circular(20.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(20.0),
                                                  child: Image.network(
                                                    playerList[index]
                                                        .profileimage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (playerList[index].isOnline ==
                                                true)
                                              Positioned(
                                                  bottom: 8,
                                                  right: 10,
                                                  child: Container(
                                                    height: 10.0,
                                                    width: 10.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      color: Colors.green,
                                                    ),
                                                  ))
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
                                                playerList[index].name,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: 35,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  gradient: LinearGradient(
                                                      colors: <Color>[
                                                        Color(0xFF7013F0),
                                                        Color(0xFFCB0FF9)
                                                      ]),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(3),
                                                      child: Image.network(
                                                          playerList[index]
                                                              .genderImage),
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      playerList[index].age,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                child: RatingBarIndicator(
                                                  rating: double.parse(
                                                      playerList[index]
                                                          .ratting
                                                          .toString()),
                                                  itemBuilder: (context, index) =>
                                                      Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  itemCount: 5,
                                                  itemSize: 12.0,
                                                  direction: Axis.horizontal,
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "${playerList[index].ratting} Rattings",
                                                style: TextStyle(fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                '${playerList[index].diamonds} Diamonds',
                                                style: TextStyle(
                                                    color: Color(0xFFCB0FF9),
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w800),
                                              ),
                                              Text(
                                                '/Round',
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontSize: 15.0),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
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
                                              "Order",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.0),
                                            ),
                                          ),
                                        ),
                                      )
                                    ]) //trailing:

                                    ),
                              ),
                              if (!((index + 1) == playerList.length))
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
