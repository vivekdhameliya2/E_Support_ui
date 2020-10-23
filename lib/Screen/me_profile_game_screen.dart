import 'package:flutter/material.dart';

class ProfileGameScreen extends StatefulWidget {
  final Function(List<String>) onSelectionChanged;

  const ProfileGameScreen({Key key, this.onSelectionChanged}) : super(key: key);
  @override
  _ProfileGameScreenState createState() => _ProfileGameScreenState();
}

class _ProfileGameScreenState extends State<ProfileGameScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<String> reportList = [
    "MineCraft",
    "Fortnite",
    "Dota2",
    "League of legends",
    "Call of Duty",
    "asphalt",
    "Counter Strike - globle offence",
    "apex legends",
    "hay  day",
    "pubg mobile",
    "animal Crossing",
  ];
  bool isSelected = false;
  List<String> selectedChoices = List();
  _buildChoiceList() {
    List<Widget> choices = List();
    reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.only(left: 10.0, top: 8.0, right: 5.0),
        child: ChoiceChip(
          label: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Text(
              item,
            ),
          ),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
          selectedColor: Color(0xFFf2ecff),
          labelStyle: selectedChoices.contains(item)
              ? TextStyle(color: Color(0xFF7013F0))
              : TextStyle(color: Colors.black),
        ),
      ));
    });
    return choices;
  }

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
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: size.width * 0.04,
                                left: size.width * 0.28,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Game",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.width * 0.035,
                            ),
                            child: Container(
                              height: 30.0,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height - ((size.width * 0.20) + 5),
                    width: size.width,
                    decoration: BoxDecoration(
                        // color: Color(0xFFF7F7F7),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 10.0, 16.0, 10.0),
                                child: Text(
                                  "Pick the game you play (${selectedChoices.length}/11) ",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Wrap(
                                  children: _buildChoiceList(),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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

class _BuildGamePicker extends StatelessWidget {
  final index;
  final gameName;
  const _BuildGamePicker({
    Key key,
    this.gameName,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
          child: Center(
            child: Text(gameName),
          ),
        ),
      ),
    );
  }
}
