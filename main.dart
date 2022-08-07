import 'package:flutter/material.dart';
import 'package:flutter_application_gradecal/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(title: const Text("Grade Calculator"),),
        body: const Screen(),
      ),
    );
  }
}