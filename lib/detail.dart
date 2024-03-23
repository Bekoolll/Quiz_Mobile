import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_store.dart';

class Detail extends StatelessWidget {
  const Detail({super.key,required this.GameStore});

  final int GameStore;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.network(imageUrls[0]),
              Text(gameList.getGameStore()[GameStore].name),
              Text(gameList.getGameStore()[GameStore].tags),
              Text(gameList.getGameStore()[GameStore].about),
              Text(gameList.getGameStore()[GameStore].releaseDate),
              Text(gameList.getGameStore()[GameStore].reviewAverage)
              //image, title, description, genre, release date, dan reviews
            ],

          ),
        ),
      ),
    ));
  }
}
