import 'package:flutter/material.dart';
import 'package:fluttercrudapi/screens/home.dart';
import 'package:fluttercrudapi/screens/read.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
        routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    'ReadScreen': (context) => const ReadScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
  },
    );
  }
}


