import 'package:e_supports/widget/comment_screen.dart';
import 'package:e_supports/widget/following_screen.dart';
import 'package:e_supports/widget/like_screen.dart';
import 'package:e_supports/widget/message_screen_chat.dart';
import 'package:flutter/material.dart';

class MessageScreenElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            height: 385.0,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    children: [
                      Container(
                        height: size.width * 0.1,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xFFF7F7F7)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                letterSpacing: 0.5,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: IconButton(
                            icon: Icon(
                              Icons.messenger_outline,
                              size: 30.0,
                            ),
                            onPressed: null),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    print("Like");
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LikeScreen()));
                  },
                  child: _Sections(
                    sectionIcon: Icons.favorite,
                    name: "Like",
                    messagenum: "4",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0),
                  child: Divider(
                    thickness: 0.2,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Comments");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CommentScreen()));
                  },
                  child: _Sections(
                    sectionIcon: Icons.message_rounded,
                    name: "Comments",
                    messagenum: "3",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0),
                  child: Divider(
                    thickness: 0.2,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Following");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FollowingScreen()));
                  },
                  child: _Sections(
                    sectionIcon: Icons.person,
                    name: "Following",
                    messagenum: "4",
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(child: MessageScreenChat()),
        ],
      ),
    );
  }
}

class _Sections extends StatelessWidget {
  final IconData sectionIcon;
  final name;
  final messagenum;
  const _Sections({
    Key key,
    this.sectionIcon,
    this.name,
    this.messagenum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                  ),
                ),
                child: Center(
                  child: Icon(
                    sectionIcon,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                  ),
                ),
                child: Center(
                    child: Text(
                  messagenum,
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
