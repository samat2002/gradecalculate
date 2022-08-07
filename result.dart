import 'package:flutter/material.dart';
import 'package:flutter_application_gradecal/constants.dart';
import 'package:flutter_application_gradecal/illusion.dart';

class Result extends StatefulWidget {
  const Result({Key? key, required this.score}) : super(key: key);
  final int score;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var grade = '';
  void gradeCal(int score) {
    if (score < 50) {
      grade = "F";
    } else if (score >= 50 && score < 55) {
      grade = "D";
    } else if (score >= 55 && score < 60) {
      grade = "D+";
    } else if (score >= 60 && score < 65) {
      grade = "C";
    } else if (score >= 65 && score < 70) {
      grade = "C+";
    } else if (score >= 70 && score < 75) {
      grade = "B";
    } else if (score >= 75 && score < 80) {
      grade = "B+";
    } else if (score >= 80) {
      grade = "A";
    }
  }

  @override
  void initState() {
    var score = widget.score;
    gradeCal(score);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Text("Grade Calculator"),
      ),
      body: SafeArea(
          child: Expanded(
        child: Column(
          children: [
            const Center(
                child: Text(
              "Your score is",
              style: headstyle,
            )),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  grade,
                  style: goodstyle,
                ),
              ),
            ),
            const bottomResult(color: Colors.green, bottomText: 'Re : Calculator',),
          ],
        ),
      )),
    );
  }
}
