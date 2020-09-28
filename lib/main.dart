import 'package:flutter/material.dart';

import './answers.dart';
import './quiz.dart';
import 'result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  int quistionIndex = 0;
  static const quistions = const [
    {
    "question":"whats your favourite color?",
    "answers":[
      {"text":"Black","score":10},
      {"text":"White","score":7},
      {"text":"Blue","score":5},
      {"text":"Green","score":2}
    ]
    },
    {
    "question":'whats your favourite Animal?',
    "answers":[
      {"text":"Lion","score":10},
      {"text":"Wolf","score":7},
      {"text":"Dog","score":5},
      {"text":"Car","score":2}
    ]
    },
    {
    "question":'whats your favourite Music Genre?',
    "answers":[
      {"text":"Rap","score":10},
      {"text":"Gazz","score":7},
      {"text":"Bluz","score":5},
      {"text":"Pob","score":2}
    ]
    }
  ];

  var totalScore = 0;
  void answerQuistion(int score){
      totalScore += score;
      setState(() {
          quistionIndex += 1; 
      });
  }

  void restartQuiz(){
    setState(() {
      totalScore = 0;
      quistionIndex = 0;
    });

  }
  Widget createWidgetOfAnswere(answer){
    return Answres(
      answer["text"],
      () => answerQuistion(answer["score"])
    );
  }

  @override
  Widget build(BuildContext ctx) {
    bool errorCheck = quistionIndex < quistions.length;
    Widget body;
    if(errorCheck){
      Map quistion = quistions[quistionIndex];
      List answersWidgetList = (quistion["answers"] as List).map(createWidgetOfAnswere).toList();
      body = Quiz(quistion,answersWidgetList);
    }else{
      body = Result(totalScore,restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child:Text('My first app'))),
        body:body,
    ));
  }
}
