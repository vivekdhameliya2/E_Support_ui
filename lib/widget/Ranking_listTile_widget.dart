import 'package:flutter/material.dart';

class RankingListTile extends StatelessWidget {
  final data;

  const RankingListTile({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.56,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          print(index);
          if (index < 3) {
            return Container();
          }

          if (index > 2) {
            return Column(
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 14.0, top: 10.0),
                    child: Text(
                      data[index].rank,
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
                        backgroundImage: NetworkImage(data[index].imgUrl),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        data[index].name,
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  trailing: Text(
                    "${data[index].points} points",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                if ((index + 1) != data.length)
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
            );
          }
        },
      ),
    );
  }
}
