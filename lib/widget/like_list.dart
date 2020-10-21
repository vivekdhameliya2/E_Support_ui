import 'package:e_supports/models/order.dart';
import 'package:flutter/material.dart';

class LikeList extends StatefulWidget {
  @override
  _LikeListState createState() => _LikeListState();
}

class _LikeListState extends State<LikeList> {
  List<Order> myOrderList = [
    Order(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "fiest order",
      true,
      "29 July",
      "paid",
    ),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
        "Smit",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "28",
        "Second Order",
        true,
        "15 minutes ago",
        "Pending"),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/mystery-under-the-topper-livia-corcoveanu.jpg",
        "Neel",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Third Order",
        false,
        "yesterday",
        "Pending"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Fourth Order",
        false,
        "1 week ago",
        "Approved"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Fourth Order",
        false,
        "1 week ago",
        "Approved"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10.0),
            child: Text(
              "This Month",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: myOrderList.length.toDouble() * 75,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: myOrderList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: ListTile(
                          leading: Container(
                            width: 60.0,
                            //color: Colors.red,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                    myOrderList[index].profileimage,
                                  ),
                                ),
                                if (myOrderList[index].isOnline == true)
                                  Positioned(
                                      bottom: 8,
                                      right: 2,
                                      child: Container(
                                        height: 10.0,
                                        width: 10.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: Colors.green,
                                        ),
                                      ))
                              ],
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${myOrderList[index].name} has like your post",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "${myOrderList[index].time}",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[400]),
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 80.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.red),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                myOrderList[index].profileimage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                    if (!((index + 1) == myOrderList.length))
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          height: 0.5,
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
