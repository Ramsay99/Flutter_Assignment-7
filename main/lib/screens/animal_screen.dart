// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:main/staticVals.dart';

class animal_screen extends StatelessWidget {
  animal_screen(
      {super.key,
      required String animalGroupBox,
      String animalImage = staticVals.DEFAULT_NETWORK_IMAGE}) {
    staticVals.radioBox_AnimalsGroupBox = animalGroupBox;
    staticVals.defaultAnimalImage = NetworkImage(animalImage);
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
      backgroundColor: Colors.brown.shade400,
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: staticVals.maxWidth,
          // height: 500,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: staticVals.defaultAnimalImage,
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Text("Hello ${staticVals.radioBox_AnimalsGroupBox}"),
              Container(
                color: Colors.amber,
                width: staticVals.maxWidth,
                // height: double.infinity,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
