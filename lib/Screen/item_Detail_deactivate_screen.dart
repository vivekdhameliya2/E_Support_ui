
import 'package:e_supports/models/Review.dart';
import 'package:e_supports/widget/order_review_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemDetailDeactivateScreen extends StatefulWidget {
  const ItemDetailDeactivateScreen({Key key, this.story}) : super(key: key);

  @override
  _ItemDetailDeactivateScreenState createState() =>
      _ItemDetailDeactivateScreenState();
  final story;
}

class _ItemDetailDeactivateScreenState
    extends State<ItemDetailDeactivateScreen> {
  var status = false;
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
    );
    final size = MediaQuery.of(context).size;

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
      )
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
                                  left: size.width * 0.2,
                                  right: size.width * 0.2),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Item Details",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.82,
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
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Kale",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 25,
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
                                            itemBuilder: (context, index) =>
                                                Icon(
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
                                SizedBox(
                                  width: 4,
                                ),
                                SizedBox(width: 40),
                              ],
                            ),
                          ),
                          Container(
                            height: 300,
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
                                  "50 Diamonds",
                                  style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient,
                                  ),
                                ),
                                Text(
                                  "/Round",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.message_rounded,
                                  size: 27,
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
                            child:
                                Divider(thickness: 7, color: Colors.grey[200]),
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
                          )
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
                child: FlatButton(
                  onPressed: () async {
                    await _OrderModalBottomSheet(context, status);
                    setState(() {
                      status = !status;
                      print(status);
                    });
                  },
                  child: status == true
                      ? Text(
                          "Activate",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        )
                      : Text(
                          "Deactivate",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                ),
                decoration: status == true
                    ? BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                        Color(0xFF7013F0),
                        Color(0xFFCB0FF9)
                      ]))
                    : BoxDecoration(color: Colors.grey[700]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Future<void> _OrderModalBottomSheet(context, status) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext bc) {
        final Shader linearGradient = LinearGradient(
          colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
        ).createShader(
          Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
        );
        return Container(
          child: new Wrap(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        status = !status;
                        Navigator.of(context).pop();
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0)), //this right here
                                child: Container(
                                  height: 170,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          // alignment: Alignment.center,
                                          width: 90,
                                          height: 90,
                                          child: Image.asset(
                                            'assets/images/bank.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Update status Successfully',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        height: 50,
                        child: status == false
                            ? Text(
                                "Confirm Activate",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  foreground: Paint()..shader = linearGradient,
                                ),
                              )
                            : Text(
                                "Confirm Deactivate",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  foreground: Paint()..shader = linearGradient,
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
