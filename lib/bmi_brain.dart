import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String interpretation() {
    if (_bmi >= 25.0)
      return 'You have higher than normal body weight. Try to exercise more';
    else if (_bmi > 18.5)
      return 'You have normal body weight. Good job!!';
    else
      return 'You have lower than normal body weight. You can eat bit more';
  }
}
