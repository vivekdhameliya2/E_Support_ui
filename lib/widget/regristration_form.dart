import 'package:e_supports/Screen/Perfect_Info_Screen.dart';
import 'package:e_supports/widget/text_input.dart';
import 'package:flutter/material.dart';

class RegristrationForm extends StatefulWidget {
  @override
  _RegristrationFormState createState() => _RegristrationFormState();
}

class _RegristrationFormState extends State<RegristrationForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
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
                  height: 15.0,
                ),
                FormInput(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[400],
                  ),
                  title: "Username",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  icon: Icon(Icons.date_range, color: Colors.grey[400]),
                  title: "BirthDay",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  icon: Icon(Icons.mail_outline, color: Colors.grey[400]),
                  title: "Email",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  icon: Icon(Icons.lock_outline, color: Colors.grey[400]),
                  title: "Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  icon: Icon(Icons.lock_outline, color: Colors.grey[400]),
                  title: "Confirm Password",
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
              ),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InfoScreen()));
              },
              child: Text(
                "Confirm",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
