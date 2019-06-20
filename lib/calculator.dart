import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi > 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getComment() {
    if (_bmi > 25) {
      return "You've a higher than normal body weight.\n Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You've a Normal body weight.\n Good Job!";
    } else {
      return "You've a lower than normal body weight.\n you can eat a bit more.";
    }
  }
}
