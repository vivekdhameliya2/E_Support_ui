import 'dart:ui';

import 'package:e_supports/models/gamescreenmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GameScreenList extends StatelessWidget {
  const GameScreenList({Key key, @required List<GameScreenModel> games})
      : _gamelist = games,
        super(key: key);
  final List<GameScreenModel> _gamelist;

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
    );
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: _gamelist.map((games) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: NetworkImage(games.profilepicture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (games.onlinestatus == true)
                    Positioned(
                      top: 35,
                      left: 38,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            color: Colors.green),
                        height: 12,
                        width: 12,
                      ),
                    )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        games.username,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xFF7013F0),
                              Color(0xFFCB0FF9)
                            ]),
                          ),
                          child: Text(
                            games.age,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: RatingBarIndicator(
                          rating: double.parse(games.rating.toString()),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 10.0,
                          direction: Axis.horizontal,
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        games.rating + 'Ratings',
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 4,
              ),
              SizedBox(width: 40),
              Column(
                children: [
                  Text(
                    games.diamond + ' Diamonds',
                    style: TextStyle(
                      foreground: Paint()..shader = linearGradient,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '/Round',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[300],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
