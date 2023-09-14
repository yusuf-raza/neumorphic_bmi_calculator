import 'package:flutter/cupertino.dart';

class BmiProvider with ChangeNotifier {
  late bool _isMale = false;
  late bool _isFemale = false;
  late double _weight = 0;
  late double _height = 0;
  double _age = 0;
  double _bmi = 0;

  final double _heightFeet = 0;

  bool get isFemale => _isFemale;

  void setFemale(bool value) {
    print("isMale?: " + _isMale.toString());
    if (_isMale) {
      return;
    } else {
      _isFemale = value;
      print("is female $_isFemale");
      notifyListeners();
    }
  }

  bool get isMale => _isMale;

  void setMale(bool value) {
    print("isFemale?: " + _isFemale.toString());
    if (_isFemale) {
      return;
    } else {
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


  /// Converts Centimeters to Foot
  int convertCMtoFT(double cm) => cm.floor() / 2.54 ~/ 12;

  /// Converts Foot to Inches
  int convertFTtoIN(int foot) => foot * 12;

  /// Converts Centimeters to Foot and Inches
  Map<String, int> convertCMtoFtIn(double cm) {
    var foot = convertCMtoFT(cm);
    var inches = cm.ceil() / 2.54 - convertFTtoIN(foot);

    return {"Foot": foot.toInt(), "Inches": inches.round()};
  }
}
