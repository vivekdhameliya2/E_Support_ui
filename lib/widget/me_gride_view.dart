import 'package:e_supports/models/megride.dart';
import 'package:flutter/material.dart';

class MeGridView extends StatelessWidget {
  const MeGridView({
    Key key,
    @required this.grides,
  }) : super(key: key);

  final List<MeGride> grides;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: grides.length,
        itemBuilder: (context, index) {
          return Container(
            height: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            grides[index].profileimage,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              grides[index].name,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              width: 25,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(colors: <Color>[
                                  Color(0xFF7013F0),
                                  Color(0xFFCB0FF9)
                                ]),
                              ),
                              child: Text(
                                grides[index].age,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Text(
                            grides[index].date,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image(
                    image: NetworkImage(
                      grides[index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    grides[index].name,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
