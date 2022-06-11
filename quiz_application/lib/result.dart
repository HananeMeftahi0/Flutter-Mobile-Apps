import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore,this.resetQuiz);


  String get resultPhrase{
    String resultText;
    if (resultScore<=40){
      resultText='You are Iron Man!';
    }else if(resultScore <=60){
      resultText='You are Thor!';
    }else {
      resultText='You are Captain America!';

    }
    return resultText ;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetQuiz,
              style: TextButton.styleFrom(primary: Colors.red),

              child: Text('Restart Quiz!'),

          ),
        ],
      ),
    );
  }
}
