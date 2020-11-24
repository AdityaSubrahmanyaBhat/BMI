import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final height,weight;

  double bmi;

  calculateBMI(){
    bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }


}

