import 'package:e_supports/widget/Bank_Form.dart';
import 'package:flutter/material.dart';

class SettingBankScreen extends StatefulWidget {
  @override
  _SettingBankScreenState createState() => _SettingBankScreenState();
}

class _SettingBankScreenState extends State<SettingBankScreen> {
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
                                "Bank",
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
                  child: BankForm(),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
