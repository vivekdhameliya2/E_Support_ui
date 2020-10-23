import 'package:flutter/material.dart';

import 'package:group_list_view/group_list_view.dart';

class ProfileCountryScreen extends StatefulWidget {
  @override
  _ProfileCountryScreenState createState() => _ProfileCountryScreenState();
}

class _ProfileCountryScreenState extends State<ProfileCountryScreen> {
  TextEditingController nameTextController;
  // int _charCount = 0;
  String name = "Harsh Tamakuwala";
  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController(text: name);
    // _charCount = name.length;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  var section;
  var coutryName;
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
                                left: size.width * 0.26,
                                right: size.width * 0.2,
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Country",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     top: size.width * 0.035,
                          //   ),
                          //   child: Container(
                          //     height: 30.0,
                          //     child: FlatButton(
                          //       onPressed: () {},
                          //       child: Text(
                          //         "Save",
                          //         style: TextStyle(
                          //             color: Colors.white, fontSize: 20.0),
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: size.height - ((size.width * 0.20) + 5),
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 12.0),
                            child: Container(
                              height: size.width * 0.08,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color(0xFFF7F7F7)),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                  hintText: "Search game,player id",
                                  hintStyle: TextStyle(
                                      letterSpacing: 0.5,
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GroupListView(
                              sectionsCount: _elements.keys.toList().length,
                              countOfItemInSection: (int section) {
                                return _elements.values
                                    .toList()[section]
                                    .length;
                              },
                              itemBuilder:
                                  (BuildContext context, IndexPath index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      section = index.section;
                                      coutryName = index.index;
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16.0,
                                                  top: 10.0,
                                                  bottom: 5.0),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  _elements.values.toList()[
                                                          index.section]
                                                      [index.index],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            if (index.section == section &&
                                                index.index == coutryName)
                                              Icon(Icons.check)
                                          ],
                                        ),
                                      ),
                                      if (_elements.values
                                              .toList()[index.section]
                                              .length !=
                                          (index.index) + 1)
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                      if (_elements.values
                                              .toList()[index.section]
                                              .length ==
                                          (index.index) + 1)
                                        SizedBox(
                                          height: 8,
                                        )
                                    ],
                                  ),
                                );
                              },
                              groupHeaderBuilder:
                                  (BuildContext context, int section) {
                                return Container(
                                  color: Color(0xFF7013F0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 5.0, bottom: 5.0),
                                    child: Text(
                                      _elements.keys.toList()[section],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                );
                              },
                              // separatorBuilder: (context, index) => SizedBox(
                              //       height: 5.0,
                              //     )
                              // sectionSeparatorBuilder: (context, section) =>
                              //     Divider(
                              //   thickness: 0.5,
                              //   color: Colors.black,
                              // ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, List> _elements = {
    'A': [
      "Afghanistan",
      "Albania",
      "Algeria",
      "American Samoa",
      "Andorra",
      "Angola",
      "Anguilla",
      "Antarctica",
      "Antigua and Barbuda",
      "Argentina",
      "Armenia",
      "Aruba",
      "Australia",
      "Austria",
      "Azerbaijan",
    ],
    'B': [
      "Bahamas",
      "Bahrain",
      "Bangladesh",
      "Barbados",
      "Belarus",
      "Belgium",
      "Belize",
      "Benin",
      "Bermuda",
      "Bhutan",
      "Bolivia",
      "Bosnia and Herzegowina",
      "Botswana",
      "Bouvet Island",
      "Brazil",
      "British Indian Ocean Territory",
      "Brunei Darussalam",
      "Bulgaria",
      "Burkina Faso",
      "Burundi",
    ],
    'C': [
      "Cambodia",
      "Cameroon",
      "Canada",
      "Cape Verde",
      "Cayman Islands",
      "Central African Republic",
      "Chad",
      "Chile",
      "China",
      "Christmas Island",
      "Cocos (Keeling) Islands",
      "Colombia",
      "Comoros",
      "Congo",
      "Congo, the Democratic Republic of the",
      "Cook Islands",
      "Costa Rica",
      "Cote d'Ivoire",
      "Croatia (Hrvatska)",
      "Cuba",
      "Cyprus",
      "Czech Republic",
    ],
    'D': [
      "Denmark",
      "Djibouti",
      "Dominica",
      "Dominican Republic",
    ],
    'E': [
      "East Timor",
      "Ecuador",
      "Egypt",
      "El Salvador",
      "Equatorial Guinea",
      "Eritrea",
      "Estonia",
      "Ethiopia",
    ],
    'F': [
      "Falkland Islands (Malvinas)",
      "Faroe Islands",
      "Fiji",
      "Finland",
      "France",
      "France Metropolitan",
      "French Guiana",
      "French Polynesia",
      "French Southern Territories",
    ],
    'G': [
      "Gabon",
      "Gambia",
      "Georgia",
      "Germany",
      "Ghana",
      "Gibraltar",
      "Greece",
      "Greenland",
      "Grenada",
      "Guadeloupe",
      "Guam",
      "Guatemala",
      "Guinea",
      "Guinea-Bissau",
      "Guyana",
    ],
    'H': [
      "Haiti",
      "Heard and Mc Donald Islands",
      "Holy See (Vatican City State)",
      "Honduras",
      "Hong Kong",
      "Hungary",
    ],
    'I': [
      "Iceland",
      "India",
      "Indonesia",
      "Iran (Islamic Republic of)",
      "Iraq",
      "Ireland",
      "Israel",
      "Italy",
    ],
    'J': [
      "Jamaica",
      "Japan",
      "Jordan",
    ],
    'K': [
      "Kazakhstan",
      "Kenya",
      "Kiribati",
      "Korea, Democratic People's Republic of",
      "Korea, Republic of",
      "Kuwait",
      "Kyrgyzstan",
    ],
    'L': [
      "Lao, People's Democratic Republic",
      "Latvia",
      "Lebanon",
      "Lesotho",
      "Liberia",
      "Libyan Arab Jamahiriya",
      "Liechtenstein",
      "Lithuania",
      "Luxembourg",
    ],
    'M': [
      "Macau",
      "Macedonia, The Former Yugoslav Republic of",
      "Madagascar",
      "Malawi",
      "Malaysia",
      "Maldives",
      "Mali",
      "Malta",
      "Marshall Islands",
      "Martinique",
      "Mauritania",
      "Mauritius",
      "Mayotte",
      "Mexico",
      "Micronesia, Federated States of",
      "Moldova, Republic of",
      "Monaco",
      "Mongolia",
      "Montserrat",
      "Morocco",
      "Mozambique",
      "Myanmar",
    ],
    'N': [
      "Namibia",
      "Nauru",
      "Nepal",
      "Netherlands",
      "Netherlands Antilles",
      "New Caledonia",
      "New Zealand",
      "Nicaragua",
      "Niger",
      "Nigeria",
      "Niue",
      "Norfolk Island",
      "Northern Mariana Islands",
      "Norway",
    ],
    'O': [
      "Oman",
    ],
    'P': [
      "Pakistan",
      "Palau",
      "Panama",
      "Papua New Guinea",
      "Paraguay",
      "Peru",
      "Philippines",
      "Pitcairn",
      "Poland",
      "Portugal",
      "Puerto Rico",
    ],
    'Q': [
      "Qatar",
    ],
    'R': [
      "Reunion",
      "Romania",
      "Russian Federation",
      "Rwanda",
      "Saint Kitts and Nevis",
      "Saint Lucia",
      "Saint Vincent and the Grenadines",
    ],
    'S': [
      "Samoa",
      "San Marino",
      "Sao Tome and Principe",
      "Saudi Arabia",
      "Senegal",
      "Seychelles",
      "Sierra Leone",
      "Singapore",
      "Slovakia (Slovak Republic)",
      "Slovenia",
      "Solomon Islands",
      "Somalia",
      "South Africa",
      "South Georgia and the South Sandwich Islands",
      "Spain",
      "Sri Lanka",
      "St. Helena",
      "St. Pierre and Miquelon",
      "Sudan",
      "Suriname",
      "Svalbard and Jan Mayen Islands",
      "Swaziland",
      "Sweden",
      "Switzerland",
      "Syrian Arab Republic",
    ],
    'T': [
      "Taiwan, Province of China",
      "Tajikistan",
      "Tanzania, United Republic of",
      "Thailand",
      "Togo",
      "Tokelau",
      "Tonga",
      "Trinidad and Tobago",
      "Tunisia",
      "Turkey",
      "Turkmenistan",
      "Turks and Caicos Islands",
      "Tuvalu",
    ],
    'U': [
      "Uganda",
      "Ukraine",
      "United Arab Emirates",
      "United Kingdom",
      "United States",
      "United States Minor Outlying Islands",
      "Uruguay",
      "Uzbekistan",
    ],
    'V': [
      "Vanuatu",
      "Venezuela",
      "Vietnam",
      "Virgin Islands (British)",
      "Virgin Islands (U.S.)",
    ],
    'W': [
      "Wallis and Futuna Islands",
      "Western Sahara",
    ],
    'Y': [
      "Yemen",
      "Yugoslavia",
    ],
    'Z': ["Zambia", "Zimbabwe"],
  };
}
