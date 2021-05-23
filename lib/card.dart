import 'package:flutter/material.dart';
import 'package:tow_flutter_app/list_of.dart';
import 'package:tow_flutter_app/dragabbal_widget.dart';
class CenterCard extends StatelessWidget {
  List<Animal> all;
  CenterCard(List<Animal> animals){
    this.all = animals;
  }
  @override
  Widget build(BuildContext context) {
      return Padding (
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          child:Container(
          height:150,
          width:150,
          child: Stack(
            alignment:Alignment.center,
          children:all.map((animal) => DraggableWidget(animal:animal)).toList(),
          )
    ),
    ),
    );


  }
}
