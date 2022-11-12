import 'package:bmi_calculator/styles/my_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BmiProvider with ChangeNotifier {
  late bool _isMale;
  late bool _isFemale;
  late int _weight = 70;
  late double _height = 0;
  late int _age = 30;
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

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }

  int get age => _age;

  void incrementWeight() {
    _weight++;
    notifyListeners();
  }

  void decrementWeight() {
    _weight--;
    notifyListeners();
  }

  int get weight => _weight;
}
