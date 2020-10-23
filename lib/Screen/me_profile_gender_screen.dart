import 'package:flutter/material.dart';

class ProfileGenderScreen extends StatefulWidget {
  @override
  _ProfileGenderScreenState createState() => _ProfileGenderScreenState();
}

class _ProfileGenderScreenState extends State<ProfileGenderScreen> {
  TextEditingController nameTextController;
  var selected = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
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
                                Navigator.of(context).pop();
                              }),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: size.width * 0.04,
                                left: size.width * 0.24,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Gender",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.width * 0.035,
                            ),
                            child: Container(
                              height: 30.0,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
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
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              )),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 0;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Male",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        if (selected == 0)
                                          Container(
                                            child: Icon(
                                              Icons.check,
                                              size: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[300],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 1;
                                  });
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Female",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        if (selected == 1)
                                          Container(
                                            child: Icon(
                                              Icons.check,
                                              size: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                      ],
                                    ),
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
          ],
        ),
      ),
    );
  }
}
