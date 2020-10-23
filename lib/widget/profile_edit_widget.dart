
import 'package:e_supports/Screen/me_profile_bio_screen.dart';
import 'package:e_supports/Screen/me_profile_birthdate_screen.dart';
import 'package:e_supports/Screen/me_profile_country_screen.dart';

import 'package:e_supports/Screen/me_profile_game_screen.dart';
import 'package:e_supports/Screen/me_profile_gender_screen.dart';
import 'package:e_supports/Screen/me_profile_name_screen.dart';
import 'package:flutter/material.dart';

class ProfileEditWidget extends StatefulWidget {
  @override
  _ProfileEditWidgetState createState() => _ProfileEditWidgetState();
}

class _ProfileEditWidgetState extends State<ProfileEditWidget> {
  var img =
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg";
  var img2 = "";
  var img3 = "";
  List selectedReportList = List();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.5,
                    height: size.width * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: img.isEmpty
                              ? Center(
                                  child: Icon(
                                  Icons.add,
                                  size: 80.0,
                                  color: Colors.grey,
                                ))
                              : Image.network(
                                  img,
                                  fit: BoxFit.cover,
                                  width: size.width * 0.5,
                                  height: size.width * 0.6,
                                ),
                        ),
                        if (img.isNotEmpty)
                          Positioned(
                              right: -4,
                              top: -4,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    img = "";
                                  });
                                },
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Center(
                                      child: Icon(
                                    Icons.close,
                                    size: 14,
                                  )),
                                ),
                              )),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.4,
                        height: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: img2.isEmpty
                                  ? Center(
                                      child: Icon(
                                      Icons.add,
                                      size: 80.0,
                                      color: Colors.grey,
                                    ))
                                  : Image.network(
                                      img2,
                                      fit: BoxFit.cover,
                                      width: size.width * 0.5,
                                      height: size.width * 0.6,
                                    ),
                            ),
                            if (img2.isNotEmpty)
                              Positioned(
                                  right: -4,
                                  top: -4,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        img2 = "";
                                      });
                                    },
                                    child: Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Center(
                                          child: Icon(
                                        Icons.close,
                                        size: 14,
                                      )),
                                    ),
                                  )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: size.width * 0.4,
                        height: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: img3.isEmpty
                                  ? Center(
                                      child: Icon(
                                      Icons.add,
                                      size: 80.0,
                                      color: Colors.grey,
                                    ))
                                  : Image.network(
                                      img3,
                                      fit: BoxFit.cover,
                                      width: size.width * 0.5,
                                      height: size.width * 0.6,
                                    ),
                            ),
                            if (img3.isNotEmpty)
                              Positioned(
                                  right: -4,
                                  top: -4,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        img3 = "";
                                      });
                                    },
                                    child: Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Center(
                                          child: Icon(
                                        Icons.close,
                                        size: 14,
                                      )),
                                    ),
                                  )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfileName()));
                  },
                  child: Container(
                    color: Colors.white,
                    child: _buildEditForm(
                        title: "Name",
                        value: "Harsh Tamakuwala",
                        hintText: "Enter your name",
                        size: size),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileGenderScreen()));
                  },
                  child: _buildEditForm(
                      title: "Gender",
                      value: "Male",
                      hintText: "Select your gander",
                      size: size),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileBirthdateScreen()));
                  },
                  child: _buildEditForm(
                      title: "BirthDay",
                      value: "1998-04-05",
                      hintText: "select your birthdate",
                      size: size),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                _buildEditForm(
                    title: "Email",
                    value: "test@test.com",
                    hintText: "Enter your email",
                    size: size),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileCountryScreen()));
                  },
                  child: _buildEditForm(
                      title: "Countery",
                      hintText: "Select your country",
                      size: size),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileBioScreen()));
                  },
                  child: _buildEditForm(
                      title: "Bio", hintText: "Enter your bio", size: size),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileGameScreen(
                        onSelectionChanged: (selectedList) {
                          setState(() {
                            selectedReportList = selectedList;
                          });
                        },
                      )));
            },
            child: Container(
              color: Colors.white,
              child: _buildEditForm(
                  title: "Game",
                  value: selectedReportList.join(",").toString(),
                  hintText: "Pick the game you play",
                  size: size),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _buildEditForm extends StatelessWidget {
  final title;
  final value;
  final hintText;

  const _buildEditForm({
    Key key,
    @required this.size,
    this.title,
    this.value,
    this.hintText,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 2.0,
      ),
      child: Row(
        children: [
          Container(
            // color: Colors.red,
            width: 90.0,
            child: Text(
              title,
              style: TextStyle(color: Colors.grey[400], fontSize: 18.0),
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            child: Container(
              height: 40.0,
              child: TextFormField(
                enabled: false,
                initialValue: value,
                style: TextStyle(fontSize: 17.0),
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          //Text(value, style: TextStyle(fontSize: 20.0)),

          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
