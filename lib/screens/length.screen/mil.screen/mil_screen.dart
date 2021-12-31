import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length.screen/mil.screen/mil_calculation.dart';

class MilScreen extends StatelessWidget {
  final String milInput;
  const MilScreen({Key? key, required this.milInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Mil'),
          MilToMetric(mil: milInput),
        ],
      ),
    );
  }
}
