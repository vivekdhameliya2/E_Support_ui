import 'package:e_supports/Screen/Write_Review_Screen.dart';
import 'package:e_supports/models/Review.dart';
import 'package:e_supports/widget/order_review_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderDetailScreenComplete extends StatefulWidget {
  @override
  _OrderDetailScreenCompleteState createState() =>
      _OrderDetailScreenCompleteState();
}

class _OrderDetailScreenCompleteState extends State<OrderDetailScreenComplete> {
  @override
  Widget build(BuildContext context) {
    List<Review> _review = [
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
      Review(
        "Chauncey",
        "Adelle,Alda",
        "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg",
        "7 days ago",
        "4",
      ),
    ];
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
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
                                "Order Detail",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:  size.width*0.06,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.81,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height:  size.width*0.12,
                                  width:  size.width*0.12,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(size.width*0.12),
                                    child: Image(
                                      image: NetworkImage(
                                          "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Kale",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: size.width*0.055,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 25,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      15),
                                              gradient: LinearGradient(
                                                  colors: <Color>[
                                                    Color(0xFF7013F0),
                                                    Color(0xFFCB0FF9)
                                                  ]),
                                            ),
                                            child: Text(
                                              "34",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: RatingBarIndicator(
                                            rating: 4,
                                            itemBuilder:
                                                (context, index) => Icon(
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
                                          "4" + 'Ratings',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                               Spacer(),
                                //pending
                                Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5),
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 75,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.black),
                                      child: Text(
                                        "Complete",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: size.width*0.7,
                          child: Image.network(
                            'https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "35 Diamonds",
                                style: TextStyle(
                                  fontSize: size.width*0.067,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = linearGradient,
                                ),
                              ),
                              Text(
                                "/Round",
                                style: TextStyle(
                                  fontSize:size.width*0.067,
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.message_rounded,
                                size: size.width*0.067,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "Impedit omnis quam ea reprehenderit et quod sit sequi. Nihil dolor excepturi alias vel. Doloremque vero at voluptatem rerum. Labore illo eveniet autem maxime dolores aliquam officiis maiores. Ut consectetur laudantium sit."),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Playing Time:",
                              ),
                              Text(
                                "Monday-Friday",
                              ),
                              Text(
                                "(20:00pm-23:00pm)",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Communicate:",
                              ),
                              Text(
                                "English,Mandarin,Cantonese",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Divider(thickness: 7, color: Colors.grey[200]),
                        ),
                        Container(
                          padding: EdgeInsets.all(7),
                          width: double.infinity,
                          child: Text(
                            "13 Review",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: OrderReview(
                            review: _review,
                          ),
                        ),
                        SizedBox(height: 22,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey[600]),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WriteReview()));
                },
                child: Text(
                  "Write a Review",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
