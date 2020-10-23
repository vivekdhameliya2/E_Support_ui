import 'package:e_supports/Screen/faqs_screen.dart';
import 'package:e_supports/Screen/privacy_policy_screen.dart';
import 'package:flutter/material.dart';

class InfoDataWidget extends StatefulWidget {
  @override
  _InfoDataWidgetState createState() => _InfoDataWidgetState();
}

class _InfoDataWidgetState extends State<InfoDataWidget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: size.width * 0.3,
                  width: size.width * 0.3,
                  child: Image.asset(
                    'assets/moreInfo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'e-supports',
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF391B5D)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'v4.9.3(33)',
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: size.width * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Text(
                    'Installation of E-Supports means that you agree to the following agreements. in the process of using E-Supports, please abide by the following agreements.',
                    style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: size.width * 0.56,
            color: Colors.white,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PrivacyPolicy()));
                  },
                  child: ListTile(
                    title: Text("Privacy Policy"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("hello");
                  },
                  child: ListTile(
                    title: Text("Terms and Conditions"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => FAQs()));
                  },
                  child: ListTile(
                    title: Text("FAQs"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
