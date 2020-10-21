import 'package:e_supports/Screen/friend_profile_screen.dart';
import 'package:e_supports/models/comment_model.dart';
import 'package:e_supports/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'dart:math';

class FriendPost extends StatefulWidget {
  final post;

  FriendPost(this.post);

  @override
  _FriendPostState createState() => _FriendPostState();
}

class _FriendPostState extends State<FriendPost> {
  var isFollow = false;
  var isLiked = false;
  var counter;
  @override
  void initState() {
    super.initState();
    counter = int.parse(widget.post.likes);
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;
    if (isLiked == true) {
      print(isLiked);
    } else {}
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(
      widget.post.image,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FriendProfileScreen()));
                  },
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(widget.post.profileimage),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(widget.post.name),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 30,
                          height: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xFF7013F0),
                              Color(0xFFCB0FF9)
                            ]),
                          ),
                          child: Row(
                            children: [
                              Text(
                                widget.post.age,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "29 July",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFollow = !isFollow;
                    });
                  },
                  child: Container(
                    height: 45.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                      ),
                    ),
                    child: isFollow == true
                        ? Center(
                            child: Text("Following",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                )))
                        : Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                  child: Text(
                                "+ follow",
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xFFCB0FF9)),
                              )),
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                isLiked = !isLiked;
                print(isLiked);
                if (isLiked == true) {
                  counter++;
                } else {
                  counter--;
                }
              });
            },
            child: Container(
              height: size.height * 0.47,
              width: double.infinity,
              child: Image.network(
                widget.post.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              widget.post.profilename,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Container(
              height: 50.0,
              child: Row(
                children: [
                  LikeButton(
                    isLiked: isLiked,
                    onTap: onLikeButtonTapped,
                    size: 30.0,
                    circleColor: CircleColor(
                        start: Color(0xFF7013F0), end: Color(0xFFCB0FF9)),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Color(0xFF7013F0),
                      dotSecondaryColor: Color(0xFFCB0FF9),
                    ),
                    likeBuilder: (isLiked) {
                      if (isLiked) {
                        return LinearGradientMask(
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.white,
                          ),
                        );
                      }
                      return Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 30.0,
                      );
                    },
                    likeCount: counter,
                    countBuilder: (int count, bool isLiked, String text) {
                      var color =
                          isLiked ? Colors.deepPurpleAccent : Colors.grey;
                      Widget result;
                      if (count == 0) {
                        result = Text(
                          "love",
                          style: TextStyle(color: color),
                        );
                      } else
                        result = Text(
                          text,
                          style: TextStyle(color: color),
                        );
                      return result;
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(widget.post.age),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      _settingGiftBottomSheet(context, widget.post);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.wallet_giftcard,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(widget.post.age),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "${widget.post.likes} likes",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 80.0,
                    //color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                                "https://images.fineartamerica.com/public/images/overview/overviewGalaxyCase001.jpg"),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 20.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                                "https://images.fineartamerica.com/public/assets/images/overview/productTapestry.jpg"),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 40.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                                NetworkImage(widget.post.profileimage),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _settingCommentBottomSheet(context, widget.post);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                "view all ${widget.post.age} comments",
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Serenity:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: " Fire",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54)),
              ]))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Karlie:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: " awesome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54)),
              ]))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Monroe:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: " Thanks",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54)),
              ]))),
        ],
      ),
    );
  }
}

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

void _settingCommentBottomSheet(context, post) {
  List<Comment> commentList = [
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "Lourdes",
        "Awesome",
        "13 min ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
        "Rachael",
        "Fire",
        "2 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "Jaquan",
        "nice look",
        "7 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "Drake",
        "Like!!",
        "13 min ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "minil",
        "nice look",
        "7 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "Jazmin",
        "nice look",
        "7 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "Zola",
        "nice look",
        "7 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "Abigayle",
        "nice look",
        "7 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "minil",
        "nice look",
        "7 hour ago"),
    Comment(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/rainy-day-woman-of-new-york-emerico-imre-toth.jpg",
        "minil",
        "nice look",
        "7 hour ago"),
  ];

  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${post.age} Comments",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: min(
                      double.parse(commentList.length.toString()) * 70.0,
                      300.0),
                  child: ListView.builder(
                    itemCount: commentList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                commentList[index].profileImage,
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  commentList[index].name,
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                new Text(
                                  commentList[index].commmentText,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Text(commentList[index].time,
                                style: TextStyle(color: Colors.grey[400])),
                            onTap: () => {Navigator.of(context).pop()},
                          ),
                          if (!((index + 1) == commentList.length))
                            Divider(
                              color: Colors.grey[400],
                              thickness: 0.2,
                            ),
                        ],
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: 2.0,
                ),
                // Divider(),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: 'Add comments..'),

                          //controller: _newMediaLinkAddressController,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Icon(
                        Icons.card_giftcard,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ));
}

void _settingGiftBottomSheet(context, post) {
  List<Feature> stories = [
    Feature(
      "https://images.financialexpress.com/2019/08/freefire.jpg",
      "30",
    ),
    Feature(
        "https://storage.googleapis.com/kaggle-media/competitions/PUBG/PUBG%20Inlay.jpg",
        "35"),
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "50"),
    Feature("https://images.financialexpress.com/2019/08/freefire.jpg", "60"),
    Feature("https://images.financialexpress.com/2019/08/freefire.jpg", "30"),
    Feature(
        "https://storage.googleapis.com/kaggle-media/competitions/PUBG/PUBG%20Inlay.jpg",
        "35"),
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "55"),
    Feature(
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "100"),
  ];
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    builder: (context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Gifts",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 300.0,
            child: GridView.builder(
              itemCount: stories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 5.0),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.0)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              stories[index].image,
                              fit: BoxFit.cover,
                              height: 60.0,
                              width: 60.0,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Color(0xFF7013F0),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(stories[index].name),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                    20.0,
                    0.0,
                    10.0,
                    10.0,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xFF7013F0),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 10.0),
                  child: Text("100")),
              Spacer(),
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 10.0),
                  child: GestureDetector(
                    onTap: () {
                      print("give");
                    },
                    child: Container(
                      height: 30.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Give",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    ),
  );
}
