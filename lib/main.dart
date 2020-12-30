import 'package:biblequiz/about.dart';
import 'package:biblequiz/description_bq.dart';
import 'package:flutter/material.dart'; 
  
import './quiz.dart'; 
import './result.dart'; 
  
void main() => runApp(MyApp()); 
  
class MyApp extends StatefulWidget { 
  @override 
  State<StatefulWidget> createState() { 
    return _MyAppState(); 
  } 
} 
  
class _MyAppState extends State<MyApp> { 
  final _questions = const [ 
    { 
      'questionText': "Q1. Le Seigneur de l'armée a fait pleuvoir la manne pour son peuple dans le désert pendant", 
      'answers': [ 
        {'text': '70 ans', 'score': -2}, 
        {'text': '50 ans', 'score': -2}, 
        {'text': '40 ans', 'score': 10}, 
        {'text': '30 ans', 'score': -2}, 
      ], 
    },

    { 
      'questionText': 'Q2. Car là où est votre trésor, là aussi est votre', 
      'answers': [ 
        {'text': 'esprit', 'score': -2}, 
        {'text': 'corps', 'score': -2}, 
        {'text': 'Cerveau', 'score': -2}, 
        {'text':'Coeur', 'score': 10 }, 
      ], 
    },

    { 
      'questionText': ' Q3. Qui a dit: "où tu iras, j irai; où tu logeras, je logerais; ton peuple sera mon peuple, et ton Dieu, mon Dieu"', 
      'answers': [ 
        {'text': 'Naomi', 'score': -2}, 
        {'text': 'Ruth', 'score': 10}, 
        {'text': 'Abigail', 'score': -2}, 
        {'text': 'Sarah', 'score': -2}, 
      ], 
    }, 

    { 
      'questionText': "Q4. Quel Prophète a fait flotter une hache à la surface de l'eau", 
      'answers': [ 
        {'text': 'Elijah', 'score': 10}, 
        {'text': 'Samuel', 'score': -2}, 
        {'text': 'Élisée', 'score': -2}, 
        {'text': 'Jérémie', 'score': -2}, 
      ], 
    },

    { 
      'questionText': 
          'Q5. Notre Rédempteur nous supplie de pardonner à notre prochain 77 fois', 
      'answers': [ 
        { 
          'text': 'Yes', 
          'score': -2, 
        }, 
        {'text': 'No', 'score': 10}, 
      ], 
    },

        { 
      'questionText': "Q6. Qui a tué le géant qui avait six doigts sur chaque main et six orteils sur chaque pied", 
      'answers': [ 
        {'text': 'David', 'score': 10}, 
        {'text': 'Samson', 'score': -2}, 
        {'text': 'Saul', 'score': -2}, 
        {'text': 'Gideon', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q7. Quel Prophète a fait flotter une hache à la surface de l'eau", 
      'answers': [ 
        {'text': 'Elijah', 'score': 10}, 
        {'text': 'Samuel', 'score': -2}, 
        {'text': 'Élisée', 'score': -2}, 
        {'text': 'Jérémie', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q8. Heureux les cœurs purs, car ils veront", 
      'answers': [ 
        {'text': 'Dieu', 'score': 10}, 
        {'text': 'Le royaume des cieux', 'score': -2}, 
        {'text': 'La gloire de Dieu', 'score': -2}, 
        {'text': "Le fils de l'homme revenir", 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q9. Dieu n'a pas permis au roi David de construire son temple parce que", 
      'answers': [ 
        {'text': 'David a versé trop de sang', 'score': 10}, 
        {'text': 'David allait bientôt mourir', 'score': -2}, 
        {'text': "David n'était pas bon à ça", 'score': -2}, 
        {'text': "David n'était pas prêt", 'score': -2}, 
      ], 
    },

        { 
      'questionText': 'Q10. Christ a dit:  "TOUS CEUX qui sont lourdement chargés devraient venir à moi, et je leur donnerai"', 
      'answers': [ 
        {'text': 'Du repos', 'score': 10}, 
        {'text': 'une promesse', 'score': -2}, 
        {'text': 'La vie', 'score': -2}, 
        {'text': 'A manger', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q11. Dans quelle piscine l'homme de 38 ans de maladie a-t-il été guéri", 
      'answers': [ 
        {'text': 'Bethesda', 'score': -2}, 
        {'text': 'Siloé', 'score': -2}, 
        {'text': 'Bethsaida', 'score': 10}, 
        {'text': 'Jordanie', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q12. De quel pays l'eunuque a qui philipe a preché venait-il?", 
      'answers': [ 
        {'text': 'Égypte', 'score': -2}, 
        {'text': 'Éthiopie', 'score': 10}, 
        {'text': 'Jérusalem', 'score': -2}, 
        {'text': 'Syrie', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q13. Quel prophète a prophétisé sur les os secs", 
      'answers': [ 
        {'text': 'Elijah', 'score': -2}, 
        {'text': 'Moise', 'score': -2}, 
        {'text': 'Ezekiel', 'score': 10}, 
        {'text': 'Jérémie', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q14. La reconstruction des murs de Jérusalem a été faite par", 
      'answers': [ 
        {'text': 'Sanballat', 'score': -2}, 
        {'text': 'Néhémie', 'score': 10}, 
        {'text': 'Tobias', 'score': -2}, 
        {'text': 'David', 'score': -2}, 
      ], 
    },

        { 
      'questionText': "Q15. Combien de filles Job avait-il?", 
      'answers': [ 
        {'text': '3', 'score': 10}, 
        {'text': '2', 'score': -2}, 
        {'text': '5', 'score': -2}, 
        {'text': '4', 'score': -2}, 
      ], 
    },

  ]; 
  
  var _questionIndex = 0; 
  var _totalScore = 0; 
  
  void _resetQuiz() { 
    setState(() { 
      _questionIndex = 0; 
      _totalScore = 0; 
    }); 
  } 
  
  void _answerQuestion(int score) { 
    _totalScore += score; 
  
    setState(() { 
      _questionIndex = _questionIndex + 1; 
    }); 
    print(_questionIndex); 
    if (_questionIndex < _questions.length) { 
      print('We have more questions!'); 
    } else { 
      print('No more questions!'); 
    } 
  } 
  
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar( 
          title: Text('Bible Quiz'),
          backgroundColor: Color(0xFF00E676),

        ),

        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Bible Quiz'),
                decoration: BoxDecoration(
                color: Color(0xFF00E676),
                ),
              ),

              ListTile(
                leading: Icon(Icons.home, size: 40,),
                title: Text('Description de Bible Quiz'),
                onTap: () {
                  // Update the state of the app.
                  
                  // Then close the drawer.
                  Navigator.pop(context);
                },
                ),
              

              ListTile(
                title: Text('About'),
                onTap: () {
                  Center(child: Aboutdt());
                },
              ),

              ListTile(
                title: Text('Version'),
                subtitle: Text("Version 1.0.0"),
                onTap: () {
                },
              ),

            ]),
        ),
 
        
        body: Padding( 
          padding: const EdgeInsets.all(30.0), 
          child: _questionIndex < _questions.length 
              ? Quiz( 
                  answerQuestion: _answerQuestion, 
                  questionIndex: _questionIndex, 
                  questions: _questions, 
                ) //Quiz 
              : Result(_totalScore, _resetQuiz), 
        ),
         
      ), //Scaffold 
      debugShowCheckedModeBanner: false, 
    ); //MaterialApp 
  } 
}