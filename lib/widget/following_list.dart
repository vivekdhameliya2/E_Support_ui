import 'package:e_supports/models/order.dart';
import 'package:flutter/material.dart';

class FollowingList extends StatefulWidget {
  @override
  _FollowingListState createState() => _FollowingListState();
}

class _FollowingListState extends State<FollowingList> {
  var isFollow = false;
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10.0),
            child: Text(
              "This Month",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: myOrderList.length.toDouble() * 73,
          decoration: BoxDecoration(color: Colors.white),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: myOrderList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: Container(
                        height: 100.0,
                        width: 60.0,
                        //color: Colors.red,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 100,
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
                                      borderRadius: BorderRadius.circular(5.0),
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
                                "${myOrderList[index].name} started following you.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
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
                      trailing: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                myOrderList[index].isOnline =
                                    !myOrderList[index].isOnline;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Container(
                                height: 35.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF7013F0),
                                      Color(0xFFCB0FF9)
                                    ],
                                  ),
                                ),
                                child: myOrderList[index].isOnline == true
                                    ? Center(
                                        child: Text("Following",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            )))
                                    : Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: Colors.white),
                                          child: Center(
                                              child: Text(
                                            "+ follow",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xFFCB0FF9)),
                                          )),
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
    );
  }
}
