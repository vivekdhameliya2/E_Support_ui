import 'package:e_supports/models/gamescreenmodel.dart';
import 'package:e_supports/widget/gameScreen_list.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  final story;

  GameScreen(this.story);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    List<GameScreenModel> _games = [
      GameScreenModel(
        "Kameron",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        '3',
        "60",
        true,
      ),
      GameScreenModel(
        "Jessyca",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "36",
        "5",
        "35",
        true,
      ),
      GameScreenModel(
        "Colby",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "45",
        "2",
        "30",
        false,
      ),
      GameScreenModel(
        "Colby",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "45",
        "2",
        "30",
        true,
      ),
      GameScreenModel(
        "Colby",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "45",
        "2",
        "30",
        false,
      ),
      GameScreenModel(
        "Colby",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "45",
        "2",
        "30",
        true,
      ),
      GameScreenModel(
        "Colby",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "45",
        "2",
        "30",
        false,
      ),
      GameScreenModel(
        "Colby",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "45",
        "2",
        "30",
        true,
      ),
    ];
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
                        left: size.width * 0.04,
                        top: size.width * 0.01,
                      ),
                      child: Row(
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
                                  widget.story.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800,
                                  ),
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
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(17),
                              topRight: Radius.circular(17),
                            ),
                            child: Image(
                              height: 250,
                              width: double.infinity,
                              image: NetworkImage(widget.story.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                         SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: GameScreenList(
                            games: _games,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
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
