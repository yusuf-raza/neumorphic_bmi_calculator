import 'package:bmi_calculator/styles/my_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BmiProvider with ChangeNotifier {
  late bool _isMale;
  late bool _isFemale;
  late double _weight = 0;
  late double _height = 0;
  late double _age = 0;
  late double _bmi;

  bool get isFemale => _isFemale;

  void setFemale(bool value) {
    if (_isMale) {
      return;
    }
    _isFemale = value;
    print("is female $_isFemale");
    notifyListeners();
  }

  bool get isMale => _isMale;

  void setMale(bool value) {
    if (_isFemale) {
      return;
    }
    _isMale = value;

    print("is male $_isMale");
    notifyListeners();
  }

  double get height => _height;

  double setHeight(double value) {
    _height = value;
    //print(_height);
    notifyListeners();
    return _height;
  }

  double setWeight(double value) {
    _weight = value;
    //print(_height);
    notifyListeners();
    return _weight;
  }

  double setAge(double value) {
    _age = value;
    //print(_height);
    notifyListeners();
    return _age;
  }

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }

  double get age => _age;

  void incrementWeight() {
    _weight++;
    notifyListeners();
  }

  void decrementWeight() {
    _weight--;
    notifyListeners();
  }

  double get weight => _weight;
}
