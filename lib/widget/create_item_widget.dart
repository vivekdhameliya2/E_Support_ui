import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateItemWidget extends StatefulWidget {
  @override
  _CreateItemWidgetState createState() => _CreateItemWidgetState();
}

class _CreateItemWidgetState extends State<CreateItemWidget> {
  var img =
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg";
  var img2 = "";
  var img3 = "";
  int selectedIndex = 0;
  int unit = 1;

  List selectedReportList = List();
  TextEditingController _textFieldController = TextEditingController();
  int _charCount = 0;
  _onChanged(String value) {
    setState(() {
      _charCount = value.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.width * 0.82,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.9,
                    height: size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: img.isEmpty
                              ? Center(
                                  child: Icon(
                                  Icons.add,
                                  size: 80.0,
                                  color: Colors.grey,
                                ))
                              : Image.network(
                                  img,
                                  fit: BoxFit.cover,
                                  width: size.width * 0.9,
                                  height: size.width * 0.4,
                                ),
                        ),
                        if (img.isNotEmpty)
                          Positioned(
                              right: -4,
                              top: -4,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    img = "";
                                  });
                                },
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Center(
                                      child: Icon(
                                    Icons.close,
                                    size: 14,
                                  )),
                                ),
                              )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: img2.isEmpty
                                  ? Center(
                                      child: Icon(
                                      Icons.add,
                                      size: 80.0,
                                      color: Colors.grey,
                                    ))
                                  : Image.network(
                                      img2,
                                      fit: BoxFit.cover,
                                      width: size.width * 0.45,
                                      height: size.width * 0.6,
                                    ),
                            ),
                            if (img2.isNotEmpty)
                              Positioned(
                                  right: -4,
                                  top: -4,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        img2 = "";
                                      });
                                    },
                                    child: Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Center(
                                          child: Icon(
                                        Icons.close,
                                        size: 14,
                                      )),
                                    ),
                                  )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: img3.isEmpty
                                  ? Center(
                                      child: Icon(
                                      Icons.add,
                                      size: 80.0,
                                      color: Colors.grey,
                                    ))
                                  : Image.network(
                                      img3,
                                      fit: BoxFit.cover,
                                      width: size.width * 0.45,
                                      height: size.width * 0.6,
                                    ),
                            ),
                            if (img3.isNotEmpty)
                              Positioned(
                                  right: -4,
                                  top: -4,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        img3 = "";
                                      });
                                    },
                                    child: Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Center(
                                          child: Icon(
                                        Icons.close,
                                        size: 14,
                                      )),
                                    ),
                                  )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
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
                          "Game",
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
                        "Diamond",
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15.0,
                top: 15.0,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            color: Colors.white,
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(50),
              ],
              maxLines: 5,
              maxLength: 50,
              controller: _textFieldController,
              onChanged: _onChanged,
              decoration: InputDecoration(
                counter: Offstage(),
                border: InputBorder.none,
                hintText: "Write some description",
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
        ],
      ),
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
