import 'dart:math';

class Calculation {
  final int height;
  final int weight;
  Calculation({required this.height, required this.weight});
 
  double result() {
    var res = (weight / pow(height / 100, 2));
    return res.roundToDouble();
  }

  // String getText() {
  //   if (_bmi >= 25) {
  //     return 'OVERWEIGHT';
  //   } else if (_bmi > 18.5) {
  //     return 'NORMAL';
  //   } else {
  //     return 'UNDERWEIGHT';
  //   }
  // }
  // Color _textColor = Color(0xFF24D876);

  // String getAdvise() {
  //   if (_bmi >= 25) {
  //     return 'You have a more than normal body weight.\n Try to do more Exercise';
  //   } else if (_bmi > 18.5) {
  //     return 'You have a normal body weight.\nGood job!';
  //   } else {
  //     return 'You have a lower than normal body weight.\n Try to eat more';
  //   }
  // }

  // Color getTextColor() {
  //   if (_bmi >= 25 || _bmi <= 18.5) {
  //     return Colors.deepOrangeAccent;
  //   } else {
  //     return Color(0xFF24D876);
  //   }
  // }
}
