import 'package:e_supports/widget/text_input.dart';
import 'package:flutter/material.dart';

class HelpForm extends StatefulWidget {
  @override
  _HelpFormState createState() => _HelpFormState();
}

class _HelpFormState extends State<HelpForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 150.0, 70.0),
    );
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
                  height: 40,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/help_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Reach Out to Us !',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 10,
                  color: Colors.grey[200],
                  thickness: 5,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text("FirstName"),
                    ),
                    Expanded(
                      child: FormInput(
                        title: "First Name",
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Last Name"),
                    ),
                    Expanded(
                      child: FormInput(
                        title: "Enter Your Last Name",
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email"),
                    ),
                    Expanded(
                      child: FormInput(
                        title: "Enter Your Email",
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Phone No."),
                    ),
                    Expanded(
                      child: FormInput(
                        title: "Enter Your Phone",
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Message"),
                    ),
                    Expanded(
                      child: FormInput(
                        title: "Enter Your Comment",
                      ),
                    ),
                  ],
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
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => InfoScreen()));
              },
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
