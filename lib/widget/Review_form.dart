import 'package:e_supports/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewForm extends StatefulWidget {
  @override
  _ReviewFormState createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Rating",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: SmoothStarRating(
                        rating: rating,
                        color: Colors.amber,
                        borderColor: Colors.grey,
                        isReadOnly: false,
                        size: 25,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 1.0,
                        onRated: (value) {
                          print("rating value -> $value");
                          print("rating value dd -> ${value.truncate()}");
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0
                  ,top: 10),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Review",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: FormInput(
                        title: "Write your review",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
