import 'package:e_supports/models/notification_model.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Notification_list extends StatefulWidget {
  @override
  _Notification_listState createState() => _Notification_listState();
}

// ignore: camel_case_types
class _Notification_listState extends State<Notification_list> {
  List<NotificationModel> notification = [
    NotificationModel(
      message:
          "You received gift from harsh. and Congratulation your supporter account have been vrify.",
      image:
          "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      date: "29 june",
    ),
    NotificationModel(
      message:
          "You received gift from harsh.ou received gift from harsh. and Congratulation your supporter account have been vrify.",
      image: "",
      date: "",
    ),
    NotificationModel(
      message: "You received gift from harsh.",
      image:
          "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      date: "28 june",
    ),
    NotificationModel(
      message: "You received gift from harsh.",
      image:
          "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-freddie-mercury-watercolor-suzanns-art.jpg",
      date: "",
    )
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: notification.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(notification[index].date),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/mystery-under-the-topper-livia-corcoveanu.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 18,
                          child: CustomPaint(
                            painter: ChatBubbleTriangle(Color(0xFFF7F7F7)),
                          ),
                        ),
                        Container(
                            width: size.width * 0.7,
                            height: notification[index].image != ""
                                ? 100
                                : notification[index].message.length.toDouble(),
                            decoration: BoxDecoration(
                                color: Color(0xFFF7F7F7),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 66.0),
                                    child: Center(
                                        child:
                                            Text(notification[index].message)),
                                  ),
                                  if (notification[index].image != "")
                                    Positioned(
                                        right: 5,
                                        bottom: 0,
                                        child: Image(
                                          height: 60.0,
                                          width: 60.0,
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              notification[index].image),
                                        ))
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
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
