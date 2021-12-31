import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/inch_screen/inch_calculation.dart';



class InchScreen extends StatelessWidget {
  final String inchesInput;
  const InchScreen({ Key? key, required this.inchesInput }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Pulgadas'),
              InchesToMetric(inches: inchesInput),
            ],
          ),
        );
  }
}