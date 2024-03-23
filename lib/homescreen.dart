import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Game_store.dart';
import 'detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  get imageUrls => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('GG GAMING'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (
              context, Game_store){
            return InkWell(
              child: Card(
                child: Column(
                  children: [
                    //Image.network(gameList.getGameStore()[GameStore].photoUrl),
                    Image.network(imageUrls[0]),
                    Text(gameList.name)
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Detail(GameStore: Game_store);
                }));
              },
            );
          }
      ),
    ));
  }
}
