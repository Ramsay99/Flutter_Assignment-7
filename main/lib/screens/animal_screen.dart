// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:main/staticVals.dart';

class animal_screen extends StatelessWidget {
   animal_screen({super.key}){
    print(staticVals.radioBox_AnimalsGroupBox);
    // staticVals.radioBox_AnimalsGroupBox = "";
  }

  @override
  Widget build(BuildContext context) {
    return animal_stateful();
  }
}

class animal_stateful extends StatefulWidget {
  const animal_stateful({super.key});

  @override
  State<animal_stateful> createState() => _animal_statefulState();
}

class _animal_statefulState extends State<animal_stateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.topCenter,
        child: Text("hello ${staticVals.radioBox_AnimalsGroupBox}"),
      ),
    );
  }
}
