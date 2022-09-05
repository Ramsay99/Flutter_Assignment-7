// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_field, constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:main/animal.dart';

class staticVals {
  static const double _BACKGROUNDPIC_WIDTH = 750;
  static const String DEFAULT = "Default";
  static const int UNDEFINED = -1;
  static const int NOT_FOUND = -1;
  static const String DEFAULT_NETWORK_IMAGE =
      "https://images.pexels.com/photos/929774/pexels-photo-929774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  static double maxWidth = _BACKGROUNDPIC_WIDTH;
  static String radioBox_AnimalsGroupBox = DEFAULT;
  static NetworkImage defaultAnimalImage = NetworkImage(DEFAULT_NETWORK_IMAGE);
}
