import 'package:e_supports/models/MeGrides.dart';
import 'package:flutter/material.dart';

class FriendProfileGridView extends StatelessWidget {
  const FriendProfileGridView({
    Key key,
    @required this.grides,
  }) : super(key: key);

  final List<MeGrides> grides;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      itemCount: grides.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(3),
          height: 150,
          width: 150,
          child: Image(
            image: NetworkImage(
              grides[index].image,
            ),
            fit: BoxFit.cover,
          ),
        );
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    ));
  }
}
