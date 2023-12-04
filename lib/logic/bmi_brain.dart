import 'dart:math';

class Calculation {
  final double height;
  final double weight;
  Calculation({required this.height, required this.weight});

  double result() {
    double res =
        double.parse((weight / pow(height / 100, 2)).toStringAsFixed(2));
    return res;
  }

  int getTextColor() {
    if (result() >= 0 && result() < 18.5) {
      return 0;
    } else if (result() >= 18.5 && result() <= 24.9) {
      return 1;
    } else if (result() >= 25 && result() <= 29.9) {
      return 2;
    } else if (result() >= 30 && result() <= 34.9) {
      return 3;
    } else if (result() >= 35 && result() <= 39.9) {
      return 4;
    } else if (result() >= 40 && result() <= 100) {
      return 5;
    }
    return -1;
  }
}
