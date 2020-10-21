import 'package:e_supports/models/Review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({Key key, @required List<Review> review})
      : _review = review,
        super(key: key);
  final List<Review> _review;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: _review.map(
        (review) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: NetworkImage(review.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      review.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(width: 5),
                    Row(
                      children: [
                        Container(
                          child: RatingBarIndicator(
                            rating: double.parse(review.rating.toString()),
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
                          review.rating + 'Ratings',
                          style: TextStyle(color: Colors.grey[400], fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
