import 'package:e_supports/models/order.dart';
import 'package:flutter/material.dart';

class MeFanList extends StatefulWidget {
  @override
  _MeFanListState createState() => _MeFanListState();
}

class _MeFanListState extends State<MeFanList> {
  var isFollow = false;
  List<Order> myOrderList = [
    Order(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "25",
      "Hello,i am using E-Suppport",
      false,
      "29 July",
      "paid",
    ),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
        "Smit",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "28",
        "Hello,i am using E-Suppport",
        true,
        "15 minutes ago",
        "Pending"),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/mystery-under-the-topper-livia-corcoveanu.jpg",
        "Neel",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        false,
        "yesterday",
        "Pending"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        true,
        "1 week ago",
        "Approved"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        true,
        "1 week ago",
        "Approved"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        true,
        "1 week ago",
        "Approved"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        false,
        "1 week ago",
        "Approved"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        true,
        "1 week ago",
        "Approved"),
    Order(
        "https://images.fineartamerica.com/public/images/homepageMediumDigitalArt001.jpg",
        "Milin",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        false,
        "1 week ago",
        "Approved"),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/mystery-under-the-topper-livia-corcoveanu.jpg",
        "Neel",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "17",
        "Hello,i am using E-Suppport",
        true,
        "yesterday",
        "Pending"),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Container(
            height: size.width * 0.08,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFFF7F7F7)),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              height: myOrderList.length.toDouble() * 73,
              decoration: BoxDecoration(color: Colors.white),
              child: ListView.builder(
                itemCount: myOrderList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
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
                                    "${myOrderList[index].name}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 4,
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
                                          padding: const EdgeInsets.all(2.0),
                                          child: Image.network(
                                              myOrderList[index].genderImage),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          myOrderList[index].age,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "${myOrderList[index].orderName}",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              )
                            ],
                          ),
                          trailing: Column(
                            children: [
                              GestureDetector(
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
                                                      BorderRadius.circular(
                                                          20.0),
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
          ),
        )
      ],
    );
  }
}
