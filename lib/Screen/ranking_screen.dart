import 'package:e_supports/models/ranking_model.dart';
import 'package:e_supports/widget/Ranking_listTile_widget.dart';
import 'package:flutter/material.dart';

class RankingScreen extends StatefulWidget {
  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  var tap = 0;
  var currenttab = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Ranking> ranking = [
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "1",
        "12223",
        "Lucile",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "2",
        "12223",
        "Sarah",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "3",
        "12223",
        "Ora",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "4",
        "12223",
        "Catharine",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "5",
        "12223",
        "Tia",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "6",
        "12223",
        "Salma",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "7",
        "12223",
        "Lola",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "8",
        "12223",
        "Julia",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "9",
        "12223",
        "Mose",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "10",
        "12223",
        "Easton",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "11",
        "12223",
        "Peyton",
      ),
      Ranking(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "12",
        "12223",
        "Eve",
      ),
    ];
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: size.width * 0.07,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tap = 0;
                                print(tap);
                              });
                            },
                            child: (tap == 0)
                                ? Text(
                                    "Contribution",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                : Text(
                                    "Contribution",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tap = 1;
                                print(tap);
                              });
                            },
                            child: (tap == 1)
                                ? Text(
                                    "Popular",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                : Text(
                                    "Popular",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: DefaultTabController(
                length: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(top: 60),
                    child: TabBar(
                      onTap: (value) {
                        setState(() {
                          currenttab = value;
                        });
                      },
                      labelColor: Colors.pinkAccent,
                      unselectedLabelColor: Colors.white,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      tabs: [
                        Tab(
                          text: "Day",
                        ),
                        Tab(
                          text: "Week",
                        ),
                        Tab(
                          text: "Month",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 130),
              height: 210,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Emmalee",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "35981366 points",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 100,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Maddison",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "dgdvvdfh",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Boris",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "dgdvvdfh",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 165,
                    top: 0.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 50,
                    top: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 290),
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
                    if (tap == 0 && currenttab == 0) Rank(ranking: ranking),
                    if (tap == 0 && currenttab == 1) Rank(ranking: ranking),
                    if (tap == 0 && currenttab == 2) Rank(ranking: ranking),
                    if (tap == 1 && currenttab == 0) Rank(ranking: ranking),
                    if (tap == 1 && currenttab == 1) Rank(ranking: ranking),
                    if (tap == 1 && currenttab == 2) Rank(ranking: ranking),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class Rank extends StatelessWidget {
  const Rank({
    Key key,
    @required this.ranking,
  }) : super(key: key);

  final List<Ranking> ranking;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          height: 360,
          child: RankingListTile(
            data: ranking,
          ),
        ),
        Container(
          child: Column(
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 10.0),
                  child: Text(
                    "139",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
                title: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg"),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Rigoberto'),
                  ],
                ),
                trailing: Text(
                  "3453 points",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
