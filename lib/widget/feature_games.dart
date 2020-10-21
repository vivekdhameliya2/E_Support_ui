import 'package:e_supports/Screen/game_screen.dart';
import 'package:e_supports/Screen/more_game_screen.dart';
import 'package:e_supports/models/feature.dart';
import 'package:flutter/material.dart';

class FeatureGames extends StatelessWidget {
  const FeatureGames( {
    Key key,
    @required List<Feature> stories,
  })  : _stories = stories,
        super(key: key);

  final List<Feature> _stories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: _stories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 10.0),
        itemBuilder: (BuildContext context, int index) {
          if (index == _stories.length - 1) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print("more");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MoreGameScreen()));
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFF7013F0), Color(0xFFCB0FF9)],
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text("more"),
              ],
            );
          }
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GameScreen(_stories[index])));
            },
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(60.0)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.network(
                        _stories[index].image,
                        fit: BoxFit.cover,
                        height: 60.0,
                        width: 60.0,
                      )),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(_stories[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}
