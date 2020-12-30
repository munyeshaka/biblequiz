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
        {'text': 'Jeremy', 'score': -2}, 
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
        body: Padding( 
          padding: const EdgeInsets.all(30.0), 
          child: _questionIndex < _questions.length 
              ? Quiz( 
                  answerQuestion: _answerQuestion, 
                  questionIndex: _questionIndex, 
                  questions: _questions, 
                ) //Quiz 
              : Result(_totalScore, _resetQuiz), 
        ), //Padding 
      ), //Scaffold 
      debugShowCheckedModeBanner: false, 
    ); //MaterialApp 
  } 
}