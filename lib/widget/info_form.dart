import 'package:e_supports/Screen/login_screen.dart';
import 'package:e_supports/widget/text_input.dart';
import 'package:flutter/material.dart';

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
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
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Container(
                          color: Colors.blue[50],
                          height: 120,
                          width: 120,
                          child: Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.blue[100],
                              size: 150,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      top: 110,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF7013F0),
                              Color(0xFFCB0FF9)
                            ],
                          ),
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          child: Container(
                            width: 35,
                            height: 35,
                            child: Icon(
                              Icons.camera_alt,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                FormInput(
                  title: "Name",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.1,
                  ),
                ),
                FormInput(
                  title: "Gender",
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
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
