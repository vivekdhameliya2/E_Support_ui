import 'package:e_supports/Screen/home_screen.dart';
import 'package:flutter/material.dart';

class EcoinWalletWidget extends StatefulWidget {
  @override
  _EcoinWalletWidgetState createState() => _EcoinWalletWidgetState();
}

class _EcoinWalletWidgetState extends State<EcoinWalletWidget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController genderController;
  @override
  void initState() {
    super.initState();
    genderController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
              height: size.width,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF8EBFE),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: size.width * 0.2),
                      child: Image.asset(
                        "assets/coin.png",
                        fit: BoxFit.cover,
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "7,000",
                        style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Diamond Earned",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
            child: Text(
              "Diamond revenue is a general team for income derived from various Diamond services.",
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
              ),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text(
                "Cashout",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
