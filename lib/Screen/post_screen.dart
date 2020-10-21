import 'package:e_supports/Screen/friends_post_screen.dart';
import 'package:e_supports/models/post.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    Key key,
    @required this.posts,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 2.5 / 3,
        shrinkWrap: true,
        children: posts.map((post) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FriendsPostScreen(post: post)));
            },
            child: Card(
              elevation: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        child: Image(
                          image: NetworkImage(
                            post.image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        post.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 25,
                              width: 25,
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(post.profileimage),
                              ),
                            ),
                          ),
                          Text(
                            post.profilename,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400),
                          ),
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
                              post.age,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.favorite_border),
                                Text(post.likes),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class FriendPostScreen {}
