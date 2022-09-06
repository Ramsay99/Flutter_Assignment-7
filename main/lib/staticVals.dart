// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_field, constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:main/animal.dart';

class staticVals {
  static const double _BACKGROUNDPIC_WIDTH = 700;
  static const String DEFAULT = "Default";
  static const int UNDEFINED = -1;
  static const int NOT_FOUND = -1;
  static const String DEFAULT_NETWORK_IMAGE =
      "https://images.pexels.com/photos/929774/pexels-photo-929774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  static double maxWidth = _BACKGROUNDPIC_WIDTH;
  static String radioBox_AnimalsGroupBox =
      setOnLaunch_radioBox_AnimalsGroupBox();
  static NetworkImage defaultAnimalImage = NetworkImage(DEFAULT_NETWORK_IMAGE);
  // static String backgroundDefault_ExactAssertImgPath =
  //     'images/Home_BackGround_BrownishSky.jpg';

  static String setOnLaunch_radioBox_AnimalsGroupBox() {
    if (animal.animalsType.isNotEmpty) {
      return animal.animalsType[0].getType();
    }
    return DEFAULT;
  }

// ToDo: Needs Refactoring, violates open-close principle.
  static String background_ExactAssertImgPath(String dropDownItemNum) {
    switch (dropDownItemNum) {
      case "sheep":
        {
          return 'images/Home_BackGround_Sheep.jpg';
        }
      case "horse":
        {
          return 'images/Home_BackGround_Horse.jpg';
        }
      default:
        {
          return 'images/Home_BackGround_BrownishSky.jpg';
        }
    }
  }
}
