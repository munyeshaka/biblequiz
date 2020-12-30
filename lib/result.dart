import 'package:flutter/material.dart'; 
  
class Result extends StatelessWidget { 
  final int resultScore; 
  final Function resetHandler; 
  
  Result(this.resultScore, this.resetHandler); 
  
  //Remark Logic 
  String get resultPhrase { 
    String resultText; 
    if (resultScore >= 164) { 
      resultText = 'Tu es incroyable, courage pour la lecture de la Bible!!'; 
      print(resultScore); 
    } else if (resultScore >= 124) { 
      resultText = 'Assez sympathique, courage pour la lecture de la Bible'; 
      print(resultScore); 
    } else if (resultScore >= 84) { 
      resultText = 'Vouz devez Lire la Bible!!'; 
    } else if (resultScore >= 4) { 
      resultText = 'Tu a besoin de lire plus la Bible!!'; 
    } else { 
      resultText = "Tu a besoin d'augmenter votre temps de lire la Bible!!"; 
      print(resultScore); 
    } 
    return resultText; 
  } 
  
  @override 
  Widget build(BuildContext context) { 
    return Center( 
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget>[ 
          Text( 
            resultPhrase, 
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), 
            textAlign: TextAlign.center, 
          ), //Text 
          Text( 
            'Score ' '$resultScore', 
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), 
            textAlign: TextAlign.center, 
          ), //Text 
          FlatButton( 
            child: Text( 
              'Redémarrer le Quiz!!', 
            ), //Text 
            textColor: Colors.blue, 
            onPressed: resetHandler, 
          ), //FlatButton 
        ], //<Widget>[] 
      ), //Column 
    ); //Center 
  } 
}