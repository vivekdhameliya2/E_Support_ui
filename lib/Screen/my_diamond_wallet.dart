import 'package:e_supports/Screen/purchase_histroy_screen.dart';
import 'package:e_supports/widget/my_diamond_wallet_widget.dart';
import 'package:flutter/material.dart';

class MyDiamondWallet extends StatelessWidget {
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
                      padding: EdgeInsets.only(top: size.width * 0.01),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            width: size.width * 0.07,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.width * 0.04),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "My Diamond Wallet",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.07,
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
                                                PurchaseHistoryScreen()));
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
                        )),
                    child: MyDiamondWalletWidget(),
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
