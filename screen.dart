import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_gradecal/constants.dart';
import 'package:flutter_application_gradecal/illusion.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var score = 50;

  void setScore(int value){
    score+= value;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Text("Input your score", style: headstyle),
          Expanded (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 15,),
                    decoration: const BoxDecoration(
                      color: Colors.grey
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$score", style: goodstyle,),
                        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          setScore(1);
                        });
                      }, icon: const Icon(FontAwesomeIcons.plus)),
                      IconButton(onPressed: (){
                        setState(() {
                          setScore(-1);
                        });
                      }, icon: const Icon(FontAwesomeIcons.minus)),
                    ],
                  ),
                      ],
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
          bottomScreen(score: score),
        ],
      ));
  }
}