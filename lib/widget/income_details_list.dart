import 'package:e_supports/models/order.dart';
import 'package:flutter/material.dart';

class IncomeDetailsList extends StatefulWidget {
  @override
  _IncomeDetailsListState createState() => _IncomeDetailsListState();
}

class _IncomeDetailsListState extends State<IncomeDetailsList> {
  List<Order> myOrderList = [
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/r-lee-ermey-as-gunnery-sergeant-hartman-art.jpg",
        "Smit",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "712",
        "Second Order",
        true,
        "15 minutes ago",
        "Pending"),
    Order(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/mystery-under-the-topper-livia-corcoveanu.jpg",
        "Neel",
        "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
        "31",
        "Third Order",
        false,
        "yesterday",
        "Pending"),
    Order(
      "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      "Harsh",
      "https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-male-icon-png-image_515464.jpg",
      "237",
      "fiest order",
      true,
      "29 July",
      "paid",
    ),
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
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
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
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "You received ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                                TextSpan(
                                    text: " ${myOrderList[index].age} diamods ",
                                    style: TextStyle(
                                        color: Color(0xFFCB0FF9),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)),
                                TextSpan(
                                    text: "from gift.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0)),
                              ]))
                            ],
                          ),
                          trailing: Text(
                            "${myOrderList[index].time}",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[400]),
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
