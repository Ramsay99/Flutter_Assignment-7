// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/StaticVals.dart';
import 'package:main/animal.dart';
import 'package:main/screens/animal_screen.dart';

void main(List<String> args) {
  print("CLEAR DEBUG CONSOLE\n.\n,\n.\n,\n.\n,");
  animal.animalsType.clear();
  animal dog = animal("Dog",
      image:
          "https://images.pexels.com/photos/5731805/pexels-photo-5731805.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
  dog.addToAvailableBreeds("Labrador");
  dog.addToAvailableBreeds("German Shepherd");
  dog.addToAvailableBreeds("Bulldog");

  animal cat = animal("Cat",
      image:
          "https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&w=600");
  cat.addToAvailableBreeds("Sphynx");
  cat.addToAvailableBreeds("Himalayan");

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.brown.shade300)),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      appBar: AppBar(
        title: Text("Assignment 7"),
        centerTitle: true,
      ),
      body: Center(
        child: Home(),
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
  List backgroundAvailableImages = ["sheep", "horse", "default"];
  String selectedBackgroundImage = "sheep"; // backgroundAvailableImages[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: staticVals.maxWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(staticVals
              .background_ExactAssertImgPath(selectedBackgroundImage)),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: ListView(children: [
          displayAnimals_RadioBtns(),
          ElevatedButton.icon(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.brown.shade600)),
            onPressed: () {
              String thisAnimalImage = staticVals.DEFAULT_NETWORK_IMAGE;
              try {
                thisAnimalImage = animal.animalsType[
                        animal.getAnimalPositionInList(
                            staticVals.radioBox_AnimalsGroupBox)]
                    .getImageURL();
              } catch (e) {
                print(e);
              }
              setState(() => pushNewAnimalPage(thisAnimalImage));
            },
            icon: Icon(Icons.double_arrow),
            label: Text("Open Page based on the Selected RadioBtn"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: DropdownButton(
              value: selectedBackgroundImage,
              items: backgroundAvailableImages
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedBackgroundImage = value.toString();
                });
              },
            ),
          )
        ]),
      ),
    );
  }

  SizedBox displayAnimals_RadioBtns() {
    return SizedBox(
      width: staticVals.maxWidth,
      height: 65 * 3,
      // 65 is the hieght of one animal radioBtn, & it displays 3 RadioBtns at a time.
      child: ListView.builder(
        itemCount: animal.animalsType.length,
        itemBuilder: (context, index) {
          return RadioListTile(
            value: animal.animalsType[index].getType().toString(),
            groupValue: staticVals.radioBox_AnimalsGroupBox,
            onChanged: (value) {
              setState(() {
                staticVals.radioBox_AnimalsGroupBox =
                    animal.animalsType[index].getType().toString();
              });
              print("---GroupBox: ${staticVals.radioBox_AnimalsGroupBox}");
              print(
                  "---Value: ${animal.animalsType[index].getType().toString()}");
            },
            title: Text(animal.animalsType[index].getType()),
            subtitle: Text(
                "Available Breeds: ${animal.animalsType[index].getAvailableBreeds()}"),
            secondary: Icon(Icons.lightbulb_circle),
          );
        },
      ),
    );
  }

  pushNewAnimalPage(String thisAnimalImage) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return animal_screen(
              animalGroupBox: staticVals.radioBox_AnimalsGroupBox,
              animalImage: thisAnimalImage);
        },
      ),
    );
  }
}
