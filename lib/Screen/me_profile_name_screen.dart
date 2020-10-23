import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileName extends StatefulWidget {
  @override
  _ProfileNameState createState() => _ProfileNameState();
}

class _ProfileNameState extends State<ProfileName> {
  TextEditingController nameTextController;
  int _charCount = 0;
  String name = "Harsh Tamakuwala";
  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController(text: name);
    _charCount = name.length;
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
                                left: size.width * 0.26,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Name",
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
                                      LengthLimitingTextInputFormatter(16),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _charCount = value.length;
                                        if (_charCount > 16) {
                                          _charCount = 16;
                                        }
                                      });
                                    },
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                    decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "Enter your name",
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      nameTextController.text = "";
                                      _charCount = 0;
                                    });
                                  },
                                  child: Container(
                                      height: 25.0,
                                      width: 25.0,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                      child: Icon(
                                        Icons.close,
                                        size: 18.0,
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.centerRight,
                          child: Text(
                            _charCount.toString() + "/16",
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
