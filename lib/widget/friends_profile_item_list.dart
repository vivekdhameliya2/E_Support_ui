import 'package:e_supports/Screen/Friends_item_screen.dart';
import 'package:e_supports/models/game_screen_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FriendsProfileItemList extends StatefulWidget {
  @override
  _FriendsProfileItemListState createState() => _FriendsProfileItemListState();
}

class _FriendsProfileItemListState extends State<FriendsProfileItemList> {
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
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Item",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FriendsItem()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    "more >",
                    style: TextStyle(fontSize: 18.0, color: Colors.grey[400]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width,
          height: 170.0,
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 6.0),
                        child: Row(children: [
                          Container(
                            height: size.height * 0.09,
                            width: size.width * 0.2,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    height: size.width * 0.15,
                                    width: size.width * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        playerList[index].profileimage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    playerList[index].name,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: size.width * 0.04),
                                  ),
                                  SizedBox(height: size.width * 0.01),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 35,
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
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: Image.network(
                                              playerList[index].genderImage),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          playerList[index].age,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: size.width * 0.03),
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
                                          playerList[index].ratting.toString()),
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: size.width * 0.04,
                                      direction: Axis.horizontal,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "${playerList[index].ratting} Rattings",
                                    style:
                                        TextStyle(fontSize: size.width * 0.03),
                                  ),
                                ],
                              ),
                              SizedBox(height: size.width * 0.01),
                              Row(
                                children: [
                                  Text(
                                    '${playerList[index].diamonds} Diamonds',
                                    style: TextStyle(
                                        color: Color(0xFFCB0FF9),
                                        fontSize: size.width * 0.04,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    '/Round',
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: size.width * 0.04),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: 25.0,
                              width: 70.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Color(0xFFCB0FF9),
                              ),
                              child: Center(
                                child: Text(
                                  "Order",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]) //trailing:

                        ),
                  ),
                  if (!((index + 1) == playerList.length))
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        height: 0.5,
                      ),
                    ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
