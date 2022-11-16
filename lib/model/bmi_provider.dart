import 'package:bmi_calculator/styles/my_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BmiProvider with ChangeNotifier {
  late bool _isMale = false;
  late bool _isFemale= false;
  late double _weight = 0;
  late double _height = 0;
  late double _age = 0;
  late double _bmi;

  bool get isFemale => _isFemale;

  void setFemale(bool value) {
    print("isMale?: "+_isMale.toString());
    if (_isMale) {
      return;
    }else{
      _isFemale = value;
      print("is female $_isFemale");
      notifyListeners();
    }

  }

  bool get isMale => _isMale;

  void setMale(bool value) {
    print("isFemale?: "+_isFemale.toString());
    if (_isFemale) {
      return;
    }else{
      _isMale = value;

      print("is male $_isMale");
      notifyListeners();
    }

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

  double get age => _age;

  double get weight => _weight;
}
