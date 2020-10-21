import 'package:flutter/material.dart';

class followers_info extends StatelessWidget {
  const followers_info({
    Key key,
    @required this.size,
    this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      //color: Colors.amber,
      alignment: Alignment.center,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '507',
                style: TextStyle(
                  color: color,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Following',
                style: TextStyle(
                  color: color,
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey[200],
            height: 40,
          ),
          Column(
            children: [
              Text(
                '1,055',
                style: TextStyle(
                  color: color,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Fans',
                style: TextStyle(
                  color: color,
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey[200],
            height: 40,
          ),
          Column(
            children: [
              Text(
                '3,002',
                style: TextStyle(
                  color: color,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Viewers',
                style: TextStyle(
                  color: color,
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey[200],
            height: 40,
          ),
          Column(
            children: [
              Text(
                '23',
                style: TextStyle(
                  color: color,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Recent',
                style: TextStyle(
                  color: color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
