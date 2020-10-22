import 'package:e_supports/Screen/Order_Detail_Screen_Complate.dart';
import 'package:e_supports/widget/Review_form.dart';
import 'package:flutter/material.dart';

class WriteReview extends StatefulWidget {
  @override
  _WriteReviewState createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Container(
                        child: Text(
                          "Write Review",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => OrderDetailScreenComplete(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Send",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ),
                      )
                    ],
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
                  child: ReviewForm(),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
