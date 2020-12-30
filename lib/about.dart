import 'package:flutter/material.dart';

class Aboutdt extends StatelessWidget {
  const Aboutdt({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(     //for row main axis is x and cross axis is y
        children: <Widget>[
          SizedBox(
            height: 200,
            width: 200,

            child: Image.asset('lib/assets/dtlogo.png'),
            ),
            Text('DukoreTech is software company who develops web sites, desktop apps, mobile apps'), 

            ],)
      
    );
  }
}
