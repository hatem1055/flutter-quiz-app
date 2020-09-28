import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function restartQuiz;
  Result(this.totalScore,this.restartQuiz);
  String get resultText{
    return totalScore > 20 ? 'You Are very Special Person':'You Are an ordinary Person';
  }
  MaterialColor get resultColor{
    return totalScore > 20 ? Colors.green : Colors.red;
  }
  @override
  Widget build(BuildContext context) {
    return Center(child:Column(
      children: [
        Text(
          resultText,
          style: TextStyle(fontSize:35,fontWeight:FontWeight.bold,color:resultColor),
          textAlign:TextAlign.center
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            margin: EdgeInsets.all(5),
            child: RaisedButton(
              color: Colors.blue[800],
              child:Text(
              'Reset the quiz',
              style:TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold 
              ),),
              onPressed: restartQuiz,
            ),
          )
      ],
    )
    ,
    );
  }
}