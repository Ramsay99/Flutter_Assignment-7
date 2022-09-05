// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:main/staticVals.dart';

class animal {
  static List<animal> animalsType = [];
  String _type = "";
  String _imageURL = staticVals.DEFAULT_NETWORK_IMAGE;
  List _availableBreeds = [];

  String getImageURL() {
    return _imageURL;
  }

  static animal getAnimalByType(String animalType) {
    return animalsType
        .firstWhere((element) => element.toString() == animalType);
  }

  static int getAnimalPositionInList(String animal) {
    return animalsType.indexWhere((element) => element.getType() == animal);
  }

  animal(String type, {String image = staticVals.DEFAULT_NETWORK_IMAGE}) {
    _type = type;
    _imageURL = image;
    animalsType.add(this);
    print("$_type Added Successfully!");
  }

  animal.empty();

  String getType() {
    return _type;
  }

  List getAvailableBreeds() {
    return _availableBreeds;
  }

  void addToAvailableBreeds(String newAvailableBreed) {
    _availableBreeds.add(newAvailableBreed);
  }
}
