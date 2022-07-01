import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _ques = 0;
  // var _run = 1;
  var _total = 0;
  void _correctAnswer(int score) {
    _total = _total + score;
    setState(() {
      _ques = _ques + 1;
    });

    //print("Correct");
    // print(_ques);
  }

  // void _wrong() {
  //   setState(() {
  //     _ques = _ques - 1;
  //   });
  //   print("Wrong");
  // }
  void _restartQuiz() {
    setState(() {
      _ques = 0;
    _total = 0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "questionIs": "From which village is naruto from?",
        "options": [
          {"text": "Leaf", "score": 1},
          {"text": "Sand", "score": 0},
          {"text": "Mist", "score": 0},
          {"text": "Stone", "score": 0},
        ],
      },
      {
        "questionIs": "Who is Sensei of Team 7?",
        "options": [
          {"text": "Asuma", "score": 0},
          {"text": "Minato", "score": 0},
          {"text": "Kakashi", "score": 1},
          {"text": "Guy", "score": 0},
        ],
      },
      {
        "questionIs": "What is Naruto\'s Chakra Type?",
        "options": [
          {"text": "Water", "score": 0},
          {"text": "Earth", "score": 0},
          {"text": "Wind", "score": 1},
          {"text": "Fire", "score": 0},
        ],
      },
      {
        "questionIs": "Who is leader of Akatsuki",
        "options": [
          {"text": "Pain", "score": 0},
          {"text": "Itachi", "score": 0},
          {"text": "Zetsu", "score": 0},
          {"text": "Obito", "score": 1},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Quiz"),
        ),
        body: _ques < _questions.length
            ? Quiz(
                questions: _questions,
                correctAnswer: _correctAnswer,
                ques: _ques)
            : Result(_total,_restartQuiz),
      ),
    );
  }
}

//...(questions[ques][options] to List<String>).map((testis){
//return testis
//})
