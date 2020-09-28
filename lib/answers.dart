import 'package:flutter/material.dart';

class Answres extends StatelessWidget {
  final String answer;
  final Function onpressed;
  Answres(this.answer,this.onpressed);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: MediaQuery.of(context).size.width * 0.80,
      margin: EdgeInsets.all(5),
      child:RaisedButton(
        color: Colors.blue[800],
        child:Text(
        answer,
        style:TextStyle(
          color:Colors.white,
          fontWeight:FontWeight.bold
        ),
        ),
        onPressed:onpressed,
    ),
    );
  }
}