import 'package:flutter/material.dart';

class DescriptionBQ extends StatelessWidget {
  const DescriptionBQ({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(     //for row main axis is x and cross axis is y
        children: <Widget>[
          SizedBox(
            height: 200,
            width: 200,

            child: Image.asset('lib/assets/bq.jpeg'),
            ),
            Text("Bible Quiz est une application qui teste la connaissance de la sainte ecriture(la Bible), c'est une serie de 20 questions"), 

            ],)
      
    );
  }
}
