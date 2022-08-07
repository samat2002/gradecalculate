import 'package:flutter/material.dart';
import 'package:flutter_application_gradecal/constants.dart';
import 'package:flutter_application_gradecal/result.dart';

// ignore: camel_case_types
class bottomResult extends StatelessWidget {
  const bottomResult({
    Key? key,
    required this.bottomText,
    required this.color,
  }) : super(key: key);

  final Color color;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(color: Colors.green),
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                bottomText,
                style: bottomstyle,
              )),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class bottomScreen extends StatelessWidget {
  const bottomScreen({
    Key? key,
    required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.green
          ),
          child: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Result(
              score: score,
            ))));
          }, child: const Text("Calculate", style: bottomstyle,)),
        ),
      ],
    );
  }
}