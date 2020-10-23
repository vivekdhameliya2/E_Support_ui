import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class ProfileBirthdateScreen extends StatefulWidget {
  @override
  _ProfileBirthdateScreenState createState() => _ProfileBirthdateScreenState();
}

const String MIN_DATETIME = '1900-01-31';
const String MAX_DATETIME = '3000-12-31';
const String INIT_DATETIME = '2019-05-17';

class _ProfileBirthdateScreenState extends State<ProfileBirthdateScreen> {
  TextEditingController nameTextController;
  bool _showTitle = true;
  DateTimePickerLocale _locale = DateTimePickerLocale.en_us;
  //List<DateTimePickerLocale> _locales = DateTimePickerLocale.values;

  String _format = 'yyyy-MMMM-dd';

  DateTime _dateTime;
  String name = "1993-7-25";
  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController(text: name);
    _dateTime = DateTime.parse(INIT_DATETIME);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.width * 0.04,
                              left: size.width * 0.2,
                              right: size.width * 0.2,
                            ),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Birthdate",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
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
                                onPressed: () {},
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
                        color: Color(0xFFF7F7F7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            DatePicker.showDatePicker(
                              context,
                              onMonthChangeStartWithFirstDate: false,
                              pickerTheme: DateTimePickerTheme(
                                itemTextStyle: TextStyle(
                                    fontSize: 20.0, color: Color(0xFF7013F0)),
                                showTitle: _showTitle,
                                cancel: Text('Cancel',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20.0)),
                                confirm: Text('Done',
                                    style: TextStyle(
                                        color: Color(0xFFCB0FF9),
                                        fontSize: 20.0)),
                              ),
                              minDateTime: DateTime.parse(MIN_DATETIME),
                              maxDateTime: DateTime.parse(MAX_DATETIME),
                              initialDateTime: _dateTime,
                              dateFormat: _format,
                              locale: _locale,

                              // onChange: (dateTime, List<int> index) {
                              //   setState(() {
                              //     _dateTime = dateTime;
                              //   });
                              // },
                              onConfirm: (dateTime, List<int> index) {
                                setState(() {
                                  _dateTime = dateTime;
                                });
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                )),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, top: 10.0),
                                    child: TextFormField(
                                      enabled: false,
                                      controller: nameTextController
                                        ..text =
                                            "${_dateTime.year}-${_dateTime.month.toString().padLeft(2, '0')}-${_dateTime.day.toString().padLeft(2, '0')}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20.0),
                                      decoration: InputDecoration(
                                          counter: Offstage(),
                                          hintText: "Select your birthdate",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
