import 'package:flutter/material.dart';

import 'quistion.dart';

class Quiz extends StatelessWidget {
  final quistion;
  final answersWidgetList;
  Quiz(this.quistion,this.answersWidgetList);
  @override
  Widget build(BuildContext context) {
    return Column(
          children:<Widget>[
            Question(quistion["question"]),
            ...answersWidgetList
          ],
    );
  }
}