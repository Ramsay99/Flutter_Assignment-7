// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.brown.shade300)),
      home: Scaffold(
        backgroundColor: Colors.brown.shade400,
        appBar: AppBar(
          title: Text("Assignment 7"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    ExactAssetImage('images/Home_BackGround_BrownishSky.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Home(),
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Text("Radio Btns Here, to move to different Pages\nBased on the Selected Radio Btn"),
    );
  }
}
