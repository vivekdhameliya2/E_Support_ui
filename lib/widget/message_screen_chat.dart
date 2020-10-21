import 'package:e_supports/models/order.dart';
import 'package:e_supports/widget/chat_screen.dart';
import 'package:flutter/material.dart';

class MessageScreenChat extends StatefulWidget {
  @override
  _MessageScreenChatState createState() => _MessageScreenChatState();
}

class _MessageScreenChatState extends State<MessageScreenChat> {
  List<Order> myOrderList = [
    Order(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "hey,how are you??",
      true,
      "29 July",
      "paid",
    ),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
        "Smit",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "28",
        "awesome!!",
        true,
        "15 minutes ago",
        "Pending"),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/mystery-under-the-topper-livia-corcoveanu.jpg",
        "Neel",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "when are we meeting?",
        false,
        "yesterday",
        "Pending"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "enjoy!!",
        false,
        "1 week ago",
        "Approved"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myOrderList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(
                      myOrderList: myOrderList[index],
                    ),
                  ),
                );
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                myOrderList[index].name,
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 35,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(colors: <Color>[
                                    Color(0xFF7013F0),
                                    Color(0xFFCB0FF9)
                                  ]),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Image.network(
                                          myOrderList[index].genderImage),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      myOrderList[index].age,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "${myOrderList[index].orderName}",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[400]),
                          ),
                        ],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${myOrderList[index].time}",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[400]),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            if (myOrderList[index].isOnline == false)
                              Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF7013F0),
                                      Color(0xFFCB0FF9)
                                    ],
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )),
                              )
                          ],
                        ),
                      )),
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
    );
  }
}
