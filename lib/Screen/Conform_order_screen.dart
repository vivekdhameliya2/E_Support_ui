import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConformOrderScreen extends StatefulWidget {
  @override
  _ConformOrderScreenState createState() => _ConformOrderScreenState();
}

class _ConformOrderScreenState extends State<ConformOrderScreen> {
  TextEditingController _textFieldController = TextEditingController();

  int _charCount = 0;

  _onChanged(String value) {
    setState(() {
      _charCount = value.length;
    });
  }

  var unit = 1;
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
    );
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
                        left: size.width * 0.04, top: size.width * 0.01),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: size.width * 0.04,
                                right: size.width * 0.2),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Confirm Order",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800,
                                ),
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
                      )),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            )),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image(
                                  image: NetworkImage(
                                      "https://cnet1.cbsistatic.com/img/l8RbnOsHzo6C0fHx-A7yGCDZxGI=/1200x675/2019/09/18/c07d7cfa-5cc7-4d64-a3bb-aabf6b778dcc/call-of-duty-mobile.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 90),
                                      child: Text(
                                        "Kale",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "50 Diamonds",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          foreground: Paint()
                                            ..shader = linearGradient,
                                        ),
                                      ),
                                      Text(
                                        "/Round",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await _buildShowModalBottomSheet(context);
                          setState(() {});
                        },
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Skill Order",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 17,
                                ),
                              ),
                              Spacer(),
                              if (selectedIndex == 0)
                                Text(
                                  "Dota 2",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              if (selectedIndex == 1)
                                Text(
                                  "Pubg",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              if (selectedIndex == 2)
                                Text(
                                  "Call of Duty",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Divider(
                          thickness: 0.5,
                          height: 1,
                          color: Colors.grey[300],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Unit",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 17,
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 30,
                              color: Colors.grey[300],
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (unit != 1)
                                        setState(() {
                                          unit--;
                                        });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                  Text(unit.toString()),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        unit++;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 1),
                                      child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Divider(
                          thickness: 0.5,
                          height: 1,
                          color: Colors.grey[300],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Total:",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              unit.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..shader = linearGradient,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "SubTotal:",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "50 Diamonds",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..shader = linearGradient,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.white,
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50),
                          ],
                          maxLines: 4,
                          maxLength: 50,
                          controller: _textFieldController,
                          onChanged: _onChanged,
                          decoration: InputDecoration(
                            counter: Offstage(),
                            border: InputBorder.none,
                            hintText:
                                "Brifly explain your requirements, within 50 words",
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.centerRight,
                        child: Text(
                          _charCount.toString() + "/50",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      Spacer(),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          width: size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF7013F0),
                                Color(0xFFCB0FF9)
                              ],
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              _OrderModalBottomSheet(context);
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => ConformOrderScreen()));
                            },
                            child: Text(
                              "Order",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  Future _buildShowModalBottomSheet(BuildContext context) {
    FixedExtentScrollController statusController =
        FixedExtentScrollController(initialItem: selectedIndex);
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (context) => StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          height: 200.0,
                          child: Column(
                            children: [
                              Container(
                                height: 40.0,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        selectedIndex = 1;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Color(0xFFCB0FF9)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 160.0,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ListWheelScrollView(
                                    controller: statusController,
                                    onSelectedItemChanged: (value) {
                                      setState(() {
                                        selectedIndex = value;
                                        print(value);
                                      });
                                    },
                                    useMagnifier: true,
                                    itemExtent: 35,
                                    magnification: 1.4,
                                    children: [
                                      if (selectedIndex == 0)
                                        Text("Dota 2",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Color(0xFFCB0FF9))),
                                      if (!(selectedIndex == 0))
                                        Text("Dota 2",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.grey)),
                                      if (selectedIndex == 1)
                                        Text("Pubg",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Color(0xFFCB0FF9))),
                                      if (!(selectedIndex == 1))
                                        Text("Pubg",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.grey)),
                                      if (selectedIndex == 2)
                                        Text("Call Of Duty",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Color(0xFFCB0FF9))),
                                      if (!(selectedIndex == 2))
                                        Text("Call Of Duty",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.grey)),
                                    ]),
                              ),
                            ],
                          ))
                    ],
                  ),
                );
              },
            ));
  }
}

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
                        color: Colors.white,
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          "Confirm to order",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            foreground: Paint()..shader = linearGradient,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Cancel",
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
