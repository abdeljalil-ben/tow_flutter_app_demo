 import 'package:flutter/material.dart';
import 'list_of.dart';
class cardTemplate extends StatelessWidget {
@required PictureType acceptType;
  @override
  Widget build(BuildContext context) => DragTarget<Animal>(

      onWillAccept: (data) {
        //print('GHHHG');
        return true;
      },
        onAccept: (data){
        //  print('GHHHG');
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text('well done'))
          );
        if(data.type == acceptType){

        /* Scaffold.of(context).showSnackBar(snackbar)
         SnackBar(content: Text('Well done'),
         );*/
        }
        else {
          return SnackBar(content: Text('try again'),
          );
        }
    },
        builder: (context,candidateData,rejectedData) {
          return Padding (
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          child: Container(
            height: 150,
            width: 150,
            color: Colors.white,
            child: Center(
                child: Image.asset("assets/dog-cartoon-4841690_960_720.jpg")
            ),
          ),
        ),
      );
        },
    );
  }

/*
Widget buildTarget(BuildContext context) =>buildTarget(
    context
    acceptType:
)
Widget buildTarget (
BuildContext context,{

@required String text,
@required AnimalType acceptType ,
}) => DragTarget<Animal>(
    builder: (context , candidateData , rejectData ) =>
onWillAccept:(data) =>true,
onAccept:(data){
 if (data.type==){


}
}
);

DragTarget<Animal> (
        builder: (context , candidateData , rejectData ) {
          return dragabalStatus;
    },

        onWillAccept: (data)=>true
    onAccept:(data){},

 */