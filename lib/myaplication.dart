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
}

