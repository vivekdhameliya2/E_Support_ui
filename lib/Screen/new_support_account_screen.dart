import 'package:e_supports/widget/text_input.dart';
import 'package:flutter/material.dart';

class NewSupportAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                                left: size.width * 0.15,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Upgrade Account",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.82,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F7F7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 10.0),
                                  child: Text(
                                    "IC Attachment",
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Container(
                                    height: size.width * 0.6,
                                    width: size.width * 0.9,
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        border:
                                            Border.all(color: Colors.grey[300]),
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Center(
                                      child: Icon(
                                        Icons.photo_library,
                                        size: 100.0,
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    "Selfie with your IC",
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Center(
                                  child: Container(
                                    height: size.width * 0.6,
                                    width: size.width * 0.9,
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        border:
                                            Border.all(color: Colors.grey[300]),
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Center(
                                      child: Icon(
                                        Icons.photo_library,
                                        size: 100.0,
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Column(
                                children: [
                                  HelpFormList(
                                      name: "IC Name",
                                      hint: "Enter your IC name"),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Divider(
                                      height: 0.1,
                                    ),
                                  ),
                                  HelpFormList(
                                      name: "IC no.",
                                      hint: "Enter Your Ic No."),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
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
                                        'Send successfully,will verify your upgrade soon.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.grey[700],
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
                    child: Text(
                      "Upgrade",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class HelpFormList extends StatelessWidget {
  final name;
  final hint;
  const HelpFormList({
    Key key,
    this.name,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
        Expanded(
          child: FormInput(
            title: hint,
          ),
        ),
      ],
    );
  }
}
