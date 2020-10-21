import 'package:e_supports/widget/ecoin_screen_widget.dart';
import 'package:flutter/material.dart';

import 'income_detail_screen.dart';

class MyEcoinWalletScreen extends StatelessWidget {
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.width * 0.03,
                            ),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "My E-Coin Wallet",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          Stack(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.history,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                IncomeDetailsScreen()));
                                  }),
                              Positioned(
                                  top: 8.0,
                                  right: 7,
                                  child: Container(
                                    height: 15.0,
                                    width: 15.0,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(7.5)),
                                    child: Center(
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height - ((size.width * 0.20) + 5),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: EcoinWalletWidget(),
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
