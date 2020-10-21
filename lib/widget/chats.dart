import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final chat;

  const Chats({Key key, this.chat}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(chat);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "28 July",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: size.height * 0.75,
            child: Stack(
              children: [
                Container(
                  height: 70.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 16.0,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 70.0,
                          width: 60.0,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 100,
                                backgroundImage: NetworkImage(
                                  chat.profileimage,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 2,
                                child: Container(
                                  height: 10.0,
                                  width: 10.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Stack(
                          children: [
                            Positioned(
                              top: 18,
                              child: CustomPaint(
                                painter: ChatBubbleTriangle(Color(0xFFF7F7F7)),
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFF7F7F7),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Center(child: Text("Let's join game")),
                                ))
                          ],
                        ),
                        //ChatBubbleTriangle(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 60.0,
                  right: 16,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: 18,
                              child: CustomPaint(
                                painter:
                                    ChatBubbleTriangleMe(Color(0xFF7013F0)),
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF7013F0),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Center(
                                      child: Text(
                                    "ok ok Comming now",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 70.0,
                          width: 60.0,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 100,
                                backgroundImage: NetworkImage(
                                  chat.profileimage,
                                ),
                              ),
                              Positioned(
                                  bottom: 10,
                                  right: 2,
                                  child: Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.green,
                                    ),
                                  ))
                            ],
                          ),
                        ),

                        //ChatBubbleTriangle(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Spacer(),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: 60.0,
              width: size.width,
              color: Color(0xFFF7F7F7),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 10.0),
                    child: Container(
                      height: 30.0,
                      width: size.width * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.card_giftcard,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border:
                              Border.all(width: 2, color: Colors.grey[400])),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey[400],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChatBubbleTriangle extends CustomPainter {
  final color;

  ChatBubbleTriangle(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = color;

    var path = Path();
    path.lineTo(-10, 5);
    path.lineTo(0, 10);
    path.lineTo(10, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ChatBubbleTriangleMe extends CustomPainter {
  final color;

  ChatBubbleTriangleMe(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = color;

    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(10, 5);
    path.lineTo(0, 10);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
