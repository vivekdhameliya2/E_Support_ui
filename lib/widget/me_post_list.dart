import 'package:e_supports/Screen/My_post_screen.dart';
import 'package:e_supports/models/megride.dart';
import 'package:flutter/material.dart';

class MePostList extends StatelessWidget {
  const MePostList({
    Key key,
    @required this.grides,
  }) : super(key: key);

  final List<MeGride> grides;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
          crossAxisCount: 3,
          children: grides.map((gride) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyPostScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(1),
                height: 150,
                width: 150,
                child: Image(
                  image: NetworkImage(
                    gride.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList()),
    );
  }
}
