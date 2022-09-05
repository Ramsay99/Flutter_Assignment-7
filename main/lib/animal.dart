class animal {
  static List animalsType = [];
  String _type = "";
  List _availableBreeds = [];

  animal(String type) {
    _type = type;
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
