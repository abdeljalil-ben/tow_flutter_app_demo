import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flip_card/flip_card.dart';
import 'package:tow_flutter_app/card.dart';
import 'package:tow_flutter_app/list_of.dart';
import 'card.dart';
import 'cardTemplate.dart';
import 'dragabbal_widget.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Animal> all =allAnimals;

  @override
  Widget build(BuildContext context) {
    getRandomImages(all);
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: new AppBar(
      ),
      body: Center(
          child:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardTemplate(), cardTemplate()],
                ),
                CenterCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [cardTemplate(),cardTemplate()],
                )
              ],
            ),
          )
      ),
    );
  }


  List<Animal> getRandomImages(List<Animal> list){
    var rng = new Random();
    List<Animal> imageToShow =new List<Animal>() ;
    List<int> randomGenerated = new List<int>();
    int index = 0;
    while(index <4){
      var randomIndex= rng.nextInt(all.length);
      randomGenerated.add(randomIndex);
      bool exist = randomGenerated.contains(randomIndex);

      if(!randomGenerated.contains(randomIndex)){
 //     if(!imageToShow.contains( all.elementAt(randomIndex))){
         index++;
         imageToShow.add(all.elementAt(randomIndex));
         randomGenerated.add(randomIndex);
      }
    }
    print(imageToShow);
    return imageToShow;

  }
}

