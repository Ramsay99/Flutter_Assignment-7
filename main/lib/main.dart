// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/StaticVals.dart';
import 'package:main/animal.dart';

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
            width: staticVals.maxWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    ExactAssetImage('images/Home_BackGround_BrownishSky.jpg'),
                fit: BoxFit.fill,
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
    animal.animalsType.clear();
    animal dog = animal("Dog");
    dog.addToAvailableBreeds("Labrador");
    dog.addToAvailableBreeds("German Shepherd");
    dog.addToAvailableBreeds("Bulldog");

    animal cat = animal("Cat");
    cat.addToAvailableBreeds("Sphynx");
    cat.addToAvailableBreeds("Himalayan");

    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: staticVals.maxWidth,
        child: ListView.builder(
          itemCount: animal.animalsType.length,
          itemBuilder: (context, index) {
            return RadioListTile(
              value: animal.animalsType[index].getType().toString(),
              groupValue: staticVals.radioBox_AnimalsGroupBox,
              onChanged: (value) {
                staticVals.radioBox_AnimalsGroupBox =
                    animal.animalsType[index].getType().toString();
                print("GroupBox: ${staticVals.radioBox_AnimalsGroupBox}");
                print("Value: ${animal.animalsType[index].getType().toString()}");
              },
              title: Text(animal.animalsType[index].getType()),
              subtitle: Text(
                  "Available Breeds: ${animal.animalsType[index].getAvailableBreeds()}"),
              secondary: Icon(Icons.remove_circle),
            );
          },
        ),
      ),
    );
  }
}
