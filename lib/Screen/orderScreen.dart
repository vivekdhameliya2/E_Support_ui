import 'package:e_supports/Screen/Profile_screen.dart';
import 'package:e_supports/Screen/home_screen.dart';
import 'package:e_supports/Screen/message_screen.dart';
import 'package:e_supports/models/order.dart';
import 'package:e_supports/widget/makeorderlist.dart';
import 'package:e_supports/widget/myorder_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  int currentPage = 1;
  int currentTab = 0;
  TabController tabBarController;
  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 3, vsync: this);
  }

  var tap = 0;
  @override
  Widget build(BuildContext context) {
    List<Order> _order = [
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Jackie",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "Kirstin",
        true,
        "Tue Oct 13 2020 ",
        "Paid",
      ),
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Jackie",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "Sonny",
        false,
        "Tue Oct 13 2020 ",
        "pending",
      ),
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Jackie",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "Conrad",
        true,
        "Tue Oct 13 2020 ",
        "pending",
      ),
    ];
    List<Order> _makeorder = [
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Josianne",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "sgsfsdf",
        true,
        "Tue Oct 13 2020",
        "Complete",
      ),
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Josianne",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "sgsfsdf",
        true,
        "Tue Oct 13 2020",
        "Pending",
      ),
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Josianne",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "sgsfsdf",
        true,
        "Just",
        "Approved",
      ),
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Josianne",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "sgsfsdf",
        true,
        "Today",
        "Paid",
      ),
      Order(
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "Josianne",
        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
        "25",
        "sgsfsdf",
        true,
        "YesterDay",
        "Rejected",
      ),
    ];

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/spachlogo.png",
              fit: BoxFit.cover,
              height: size.height,
              width: size.width,
            ),
            Positioned(
              top: 5,
              child: Column(
                children: [
                  Container(
                    height: size.width * 0.15,
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.04,
                        top: size.width * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tap = 0;
                                print(tap);
                              });
                            },
                            child: (tap == 0)
                                ? Text(
                                    "My Order",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                : Text(
                                    "My Order",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tap = 1;
                                print(tap);
                              });
                            },
                            child: (tap == 1)
                                ? Text(
                                    "Make Order",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                : Text(
                                    "Make Order",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              _OrderModalBottomSheet(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      size: size.width * 0.07,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height - ((size.width * 0.20) + 5),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: tap == 0
                        ? Container(
                            padding: EdgeInsets.only(top: 20),
                            height: 100,
                            child: MyOrderList(
                              order: _order,
                            ),
                          )
                        : Container(
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: MakeOrderList(
                                makeorder: _makeorder,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          elevation: 0.0,
          onPressed: null,
          backgroundColor: Colors.white,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
              ),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30.0,
                    color: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return OrderScreen();
                //     },
                //   ),
                // );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.clean_hands,
                    size: 30.0,
                    color: Color(
                      0xFF7013F0,
                    ),
                  ),
                  Text("order",
                      style: TextStyle(
                          color: Color(
                            0xFF7013F0,
                          ),
                          fontSize: 12.0)),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 0.0,
                    ),
                    onPressed: null),
                Text("")
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return MessageScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        size: 30.0,
                        color: Colors.grey[400],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 16.0,
                          width: 16.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text(
                              "9+",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("Message",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12.0))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 30.0,
                    color: Colors.grey[400],
                  ),
                  Text("Profile",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12.0))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void _OrderModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext bc) {
        final Shader linearGradient = LinearGradient(
          colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
        ).createShader(
          Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
        );
        return Container(
          child: new Wrap(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0)), //this right here
                                child: Container(
                                  height: 170,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          // alignment: Alignment.center,
                                          width: 90,
                                          height: 90,
                                          child: Image.asset(
                                            'assets/bank.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Order successfully',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.white,
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            foreground: Paint()..shader = linearGradient,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "View Only pending",
                        style: TextStyle(
                          fontSize: 18,
                          foreground: Paint()..shader = linearGradient,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "View Only approved",
                        style: TextStyle(
                          fontSize: 18,
                          foreground: Paint()..shader = linearGradient,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "View Only Paid",
                        style: TextStyle(
                          fontSize: 18,
                          foreground: Paint()..shader = linearGradient,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "View Only rejected",
                        style: TextStyle(
                          fontSize: 18,
                          foreground: Paint()..shader = linearGradient,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "View Only close",
                        style: TextStyle(
                          fontSize: 18,
                          foreground: Paint()..shader = linearGradient,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Cance",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
