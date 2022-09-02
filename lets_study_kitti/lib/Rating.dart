import 'package:flutter/material.dart';
import 'package:lets_study_kitti/Score.dart' show Score;

class Rating extends StatelessWidget {
  Score difficulty = new Score(0);
  Score interest = new Score(0);
  Score teaching = new Score(0);

  Rating(int difficulty, int interest, int teaching) {
    this.difficulty = new Score(difficulty);
    this.interest = new Score(interest);
    this.teaching = new Score(teaching);
  }

  Widget build(BuildContext context) { 
    return Card(
      elevation: 24,
      child: Column(children: [
        Row(children: [
          difficulty,
          const Text("Difficulty"),
        ]),
        Row(children: [
          interest,
          const Text("Interest Level"),
        ]),
        Row(children: [
          teaching,
          const Text("Teaching Quality"),
        ]),
      ],)  
      );
  }
}