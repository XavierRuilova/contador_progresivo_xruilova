import 'package:flutter/material.dart';
import 'package:contador_progresivo_xruilova/homepage.dart';

void main() {
  runApp(const ProgressiveCounterApp());
}

class ProgressiveCounterApp extends StatelessWidget {
  const ProgressiveCounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


