import 'package:e_supports/Screen/Setting_screen.dart';
import 'package:e_supports/widget/text_input.dart';
import 'package:flutter/material.dart';

class ResetPasswordForm extends StatefulWidget {
  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
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
                  icon: Icon(Icons.lock_outline, color: Colors.grey[400]),
                  title: " Current Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  icon: Icon(Icons.lock_outline, color: Colors.grey[400]),
                  title: "New Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  icon: Icon(Icons.lock_outline, color: Colors.grey[400]),
                  title: "Current New Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
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
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              child: Text(
                "Reset Password",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
