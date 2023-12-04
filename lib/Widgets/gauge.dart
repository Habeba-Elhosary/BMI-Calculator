import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeWidget extends StatelessWidget {
  final double bmiVal;
  const GaugeWidget({super.key, required this.bmiVal});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      // enableLoadingAnimation: true,
      axes: <RadialAxis>[
        RadialAxis(minimum: 0, maximum: 100, ranges: <GaugeRange>[
          GaugeRange(startValue: 0, endValue: 18.5, color: Colors.yellow),
          GaugeRange(startValue: 18.5, endValue: 25, color: Colors.green),
          GaugeRange(startValue: 25, endValue: 30, color: Colors.red.shade100),
          GaugeRange(startValue: 30, endValue: 35, color: Colors.red.shade300),
          GaugeRange(startValue: 35, endValue: 40, color: Colors.red.shade600),
          GaugeRange(startValue: 40, endValue: 100, color: Colors.red.shade900)
        ], pointers: <GaugePointer>[
          NeedlePointer(
            value: bmiVal,
            enableAnimation: true,
            needleColor: MyColors.myBlue,
            knobStyle: KnobStyle(
              color: MyColors.myBlue,
            ),
          ),
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Text("$bmiVal", style: TextStyles.headLine2),
              angle: 90,
              positionFactor: 0.5),
        ])
      ],
    );
  }
}
