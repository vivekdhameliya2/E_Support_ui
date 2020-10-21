import 'package:flutter/material.dart';

class MyDiamondWalletWidget extends StatefulWidget {
  @override
  _MyDiamondWalletWidgetState createState() => _MyDiamondWalletWidgetState();
}

class _MyDiamondWalletWidgetState extends State<MyDiamondWalletWidget> {
  int selectedRechargeOption = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            height: 200.0,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFFF8EBFE),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50.0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 10.0),
                        child: Image.asset(
                          "assets/diamond.png",
                          height: 40.0,
                          width: 40.0,
                        ),
                      ),
                      Text(
                        "Diamond Balance",
                        style: TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 100.0,
                    left: 16.0,
                    child: Text(
                      "3,500",
                      style: TextStyle(fontSize: 40.0, color: Colors.grey[800]),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.width * 0.1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text("Please select the amount of recharge"),
        ),
        SizedBox(
          height: size.width * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRechargeOption = 1;
                });
              },
              child: _BuildRecharchOption(
                selectedIndex: selectedRechargeOption,
                index: 1,
                numOfDiamond: "31",
                price: "3.90",
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRechargeOption = 2;
                });
              },
              child: _BuildRecharchOption(
                selectedIndex: selectedRechargeOption,
                index: 2,
                numOfDiamond: "237",
                price: "29.90",
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRechargeOption = 3;
                });
              },
              child: _BuildRecharchOption(
                selectedIndex: selectedRechargeOption,
                index: 3,
                numOfDiamond: "712",
                price: "79.90",
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.width * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRechargeOption = 4;
                });
              },
              child: _BuildRecharchOption(
                selectedIndex: selectedRechargeOption,
                index: 4,
                numOfDiamond: "2145",
                price: "249.90",
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRechargeOption = 5;
                });
              },
              child: _BuildRecharchOption(
                selectedIndex: selectedRechargeOption,
                index: 5,
                numOfDiamond: "3800",
                price: "399.90",
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRechargeOption = 6;
                });
              },
              child: _BuildRecharchOption(
                selectedIndex: selectedRechargeOption,
                index: 6,
                numOfDiamond: "5200",
                price: "549.90",
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _BuildRecharchOption extends StatelessWidget {
  final numOfDiamond;
  final price;
  final index;
  final selectedIndex;
  const _BuildRecharchOption({
    Key key,
    this.numOfDiamond,
    this.price,
    this.index,
    this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: 120.0,
      decoration: selectedIndex == index
          ? BoxDecoration(
              color: Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Color(0xFFCB0FF9), width: 2))
          : BoxDecoration(
              color: Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Color(0xFFF7F7F7), width: 2)),
      child: Stack(
        children: [
          Positioned(
            top: 26.0,
            left: 5.0,
            right: 10.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 3.0),
                  child: Image.asset(
                    "assets/diamond.png",
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                Text(
                  numOfDiamond,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
              top: 75.0,
              left: 25.0,
              child: Text(
                "RM $price",
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
