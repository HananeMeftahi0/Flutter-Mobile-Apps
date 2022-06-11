
import 'package:flutter/material.dart';
import 'package:quiz_application/quiz.dart';
import 'package:quiz_application/result.dart';



void main()=> runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  final _questions= const[
    {
      'questionText':'What is your fave weapon?',
      'answers': [{'text':'Repulsors','score':10},{'text':'Mjollnir','score':20},{'text':'Shield','score':30}],
    },
    {
      'questionText':'Would you rather be?',
      'answers': [{'text':'Genius, Billionaire, Playboy, Philanthropist','score':10},{'text':'A god','score':20},{'text':'A super soldier','score':30}],
    }, {
      'questionText':'Wich quote do you prefer?',
      'answers': [{'text':'Sometimes you gotta run before you can walk.','score':10},{'text':'Fortunately, I am mighty!','score':20},{'text':'There’s only one God, ma’am, and I’m pretty sure he doesn’t dress like that.','score':30}],
    },

  ];

  var _questionIndex=0;
  var _totalScore=0;


  void _answerQuestion(int score){
    _totalScore+=score;

    if(_questionIndex <_questions.length){
      setState(() {
        _questionIndex=_questionIndex+1;
      });
    }
  }
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });


  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Which Avenger are you?'),),
        body: _questionIndex <_questions.length?
        Quiz(
            answerQuestion:_answerQuestion,
            questions:_questions,
            questionIndex: _questionIndex)
            :Result(_totalScore,_resetQuiz),



    ),
    );
  }
  

}