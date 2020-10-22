import 'package:e_supports/Screen/Help_Screen.dart';
import 'package:e_supports/Screen/MemberShip_Screen.dart';
import 'package:e_supports/Screen/Setting_screen.dart';
import 'package:e_supports/Screen/ranking_screen.dart';
import 'package:flutter/material.dart';

class Gride_menu extends StatelessWidget {
  const Gride_menu({
    Key key,
    @required this.varified,
  }) : super(key: key);

  final bool varified;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        UnicornOutlineButton(
                          strokeWidth: 2,
                          radius: 45,
                          gradient: LinearGradient(
                              colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                          child: Icon(
                            Icons.payment,
                            color: Color(0xFF7013F0),
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MemberShipScreen()));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Membership'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RankingScreen()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 45,
                            gradient: LinearGradient(
                                colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                            child: Icon(
                              Icons.payment,
                              color: Color(0xFFCB0FF9),
                              size: 35,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RankingScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Ranking'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 45,
                            gradient: LinearGradient(
                                colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF7013F0),
                              size: 35,
                            ),
                            onPressed: () {})
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('More Info'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        UnicornOutlineButton(
                          strokeWidth: 2,
                          radius: 45,
                          gradient: LinearGradient(
                              colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                          child: Icon(
                            Icons.person_add,
                            color: Color(0xFFCB0FF9),
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('New Supporter \n    Account'),
                  ],
                ),
              ),
              if (varified != false)
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 45,
                            gradient: LinearGradient(
                                colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                            child: Icon(
                              Icons.food_bank,
                              color: Color(0xFF7013F0),
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Item'),
                    ],
                  ),
                ),
              if (varified == false)
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 45,
                            gradient: LinearGradient(
                                colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                            child: Icon(
                              Icons.settings,
                              color: Color(0xFF7013F0),
                              size: 35,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SettingScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Setting'),
                    ],
                  ),
                ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        UnicornOutlineButton(
                          strokeWidth: 2,
                          radius: 45,
                          gradient: LinearGradient(
                              colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                          child: Icon(
                            Icons.help,
                            color: Color(0xFFCB0FF9),
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HelpScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Help'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          if (varified != false)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 45,
                            gradient: LinearGradient(
                                colors: [Color(0xFF7013F0), Color(0xFFCB0FF9)]),
                            child: Icon(
                              Icons.settings,
                              color: Color(0xFF7013F0),
                              size: 35,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SettingScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Setting'),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  UnicornOutlineButton({
    @required double strokeWidth,
    @required double radius,
    @required Gradient gradient,
    @required Widget child,
    @required VoidCallback onPressed,
  })  : this._painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._child = child,
        this._callback = onPressed,
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: BoxConstraints(minWidth: 60, minHeight: 60),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {@required double strokeWidth,
      @required double radius,
      @required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
