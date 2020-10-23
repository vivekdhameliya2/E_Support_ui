import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileBioScreen extends StatefulWidget {
  @override
  _ProfileBioScreenState createState() => _ProfileBioScreenState();
}

class _ProfileBioScreenState extends State<ProfileBioScreen> {
  TextEditingController nameTextController;
  int _charCount = 0;

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
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
                                left: size.width * 0.30,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Bio",
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
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: nameTextController,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(100),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _charCount = value.length;
                                        if (_charCount > 100) {
                                          _charCount = 100;
                                        }
                                      });
                                    },
                                    maxLines: 4,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                    decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "Write something about you",
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.centerRight,
                          child: Text(
                            _charCount.toString() + "/100",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
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
